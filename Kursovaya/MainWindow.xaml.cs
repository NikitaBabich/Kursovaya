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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Kursovaya
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void ShowTable()
        {
            //DataGridCases.ItemsSource = context.Cases.ToList();
        }

        private void BtnSelectEmployee_Click(object sender, RoutedEventArgs e)
        {
            var EmplyeList = new Windows.EmployeWindow();
            EmplyeList.ShowDialog();
        }

        private void BtnSelectVictim_Click(object sender, RoutedEventArgs e)
        {
            var VictimList = new Windows.VictimsWindow();
            VictimList.ShowDialog();
        }

        private void BtnSelectAccused_Click(object sender, RoutedEventArgs e)
        {
            var AccusedList = new Windows.AccusedWindow();
            AccusedList.ShowDialog();

        }

        private void BtnAddData_Click(object sender, RoutedEventArgs e)
        {
            //var NewZap = new Case();
            //context.Cases.Add(NewZap);
            var EditWindow = new Windows.AddCaseWindow();
            EditWindow.ShowDialog();
            ShowTable();
        }

        private void BtnDeleteData_Click(object sender, RoutedEventArgs e)
        {
            var currentZap = DataGridCases.SelectedItem as //Cases;
            if (currentZap == null)
            {
                MessageBox.Show("Выберите строку!");
                return;
            }
            MessageBoxResult messageBoxResult = MessageBox.Show("Вы хотите удалить?", "Удаление", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (messageBoxResult == MessageBoxResult.Yes)
            {
                context.Cases.Remove(currentZap);
                context.SaveChanges();
                MessageBox.Show("Данные удалены");
                ShowTable();
            }
        }

        private void BtnEditData_Click(object sender, RoutedEventArgs e)
        {
            Button BtnEdit = sender as Button;
            var currentZap = BtnEdit.DataContext as Cases;
            var EditWindow = new Windows.AddCaseWindow(context, currentZap);
            EditWindow.ShowDialog();
        }
    }
}
