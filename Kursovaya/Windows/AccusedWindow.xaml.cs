using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Kursovaya.Windows
{
    /// <summary>
    /// Логика взаимодействия для AccusedWindow.xaml
    /// </summary>
    public partial class AccusedWindow : Window
    {
        PoliceEntities context;
        public AccusedWindow()
        {
            InitializeComponent();
            context = new PoliceEntities();
            ShowTable();
        }

        private void ShowTable()
        {
            DataGridAccused.ItemsSource = context.Cases.ToList();
        }

        private void BtnAddData_Click(object sender, RoutedEventArgs e)
        {
            var NewZap = new Accused();
            context.Accuseds.Add(NewZap);
            var EditWindow = new Windows.AddAccusedWindow(context, NewZap);
            EditWindow.ShowDialog();
            ShowTable();
        }

        private void BtnDeleteData_Click(object sender, RoutedEventArgs e)
        {
            var currentZap = DataGridAccused.SelectedItem as Accused;
            if (currentZap == null)
            {
                MessageBox.Show("Выберите строку!");
                return;
            }
            MessageBoxResult messageBoxResult = MessageBox.Show("Вы хотите удалить?", "Удаление", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (messageBoxResult == MessageBoxResult.Yes)
            {
                context.Accuseds.Remove(currentZap);
                context.SaveChanges();
                MessageBox.Show("Данные удалены");
                ShowTable();
            }
        }

        private void BtnEditData_Click(object sender, RoutedEventArgs e)
        {
            Button BtnEdit = sender as Button;
            var currentZap = BtnEdit.DataContext as Accused;
            var EditWindow = new Windows.AddAccusedWindow(context, currentZap);
            EditWindow.ShowDialog();
        }
    }
}
