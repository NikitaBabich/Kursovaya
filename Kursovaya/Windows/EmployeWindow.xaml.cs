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
            DataGridEmploye.ItemsSource = context.Cases.ToList();
        }

        private void BtnAddData_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnDeleteData_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnEditData_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
