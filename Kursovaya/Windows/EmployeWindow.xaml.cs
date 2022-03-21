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
    /// Логика взаимодействия для EmployeWindow.xaml
    /// </summary>
    public partial class EmployeWindow : Window
    {
        PoliceEntities context;
        public EmployeWindow()
        {
            InitializeComponent();
            context = new PoliceEntities();
            ShowTable();
        }

        private void ShowTable()
        {
            DataGridEmploye.ItemsSource = context.Employes.ToList();
        }

        private void BtnAddData_Click(object sender, RoutedEventArgs e)
        {
            var NewZap = new Employe();
            context.Employes.Add(NewZap);
            var EditWindow = new Windows.AddEmployWindow(context, NewZap);
            EditWindow.ShowDialog();
            ShowTable();
        }

        private void BtnDeleteData_Click(object sender, RoutedEventArgs e)
        {
            var currentZap = DataGridEmploye.SelectedItem as Employe;
            if (currentZap == null)
            {
                MessageBox.Show("Выберите строку!");
                return;
            }
            MessageBoxResult messageBoxResult = MessageBox.Show("Вы хотите удалить?", "Удаление", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (messageBoxResult == MessageBoxResult.Yes)
            {
                context.Employes.Remove(currentZap);
                context.SaveChanges();
                MessageBox.Show("Данные удалены");
                ShowTable();
            }
        }

        private void BtnEditData_Click(object sender, RoutedEventArgs e)
        {
            Button BtnEdit = sender as Button;
            var currentZap = BtnEdit.DataContext as Employe;
            var EditWindow = new Windows.AddEmployWindow(context, currentZap);
            EditWindow.ShowDialog();
        }
    }
}
