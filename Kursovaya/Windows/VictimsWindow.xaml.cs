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
    /// Логика взаимодействия для VictimsWindow.xaml
    /// </summary>
    public partial class VictimsWindow : Window
    {
        PoliceEntities context;
        public VictimsWindow()
        {
            InitializeComponent();
            context = new PoliceEntities();
            ShowTable();
        }

        private void ShowTable()
        {
            DataGridVictims.ItemsSource = context.Victims.ToList();
        }

        private void BtnAddData_Click(object sender, RoutedEventArgs e)
        {
            var NewZap = new Victim();
            context.Victims.Add(NewZap);
            var EditWindow = new Windows.AddVictimWindow(context, NewZap);
            EditWindow.ShowDialog();
            ShowTable();
        }

        private void BtnDeleteData_Click(object sender, RoutedEventArgs e)
        {
            var currentZap = DataGridVictims.SelectedItem as Victim;
            if (currentZap == null)
            {
                MessageBox.Show("Выберите строку!");
                return;
            }
            MessageBoxResult messageBoxResult = MessageBox.Show("Вы хотите удалить?", "Удаление", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (messageBoxResult == MessageBoxResult.Yes)
            {
                context.Victims.Remove(currentZap);
                context.SaveChanges();
                MessageBox.Show("Данные удалены");
                ShowTable();
            }
        }

        private void BtnEditData_Click(object sender, RoutedEventArgs e)
        {
            Button BtnEdit = sender as Button;
            var currentZap = BtnEdit.DataContext as Victim;
            var EditWindow = new Windows.AddVictimWindow(context, currentZap);
            EditWindow.ShowDialog();
        }
    }
}
