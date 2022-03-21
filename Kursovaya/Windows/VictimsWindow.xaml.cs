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
            DataGridVictims.ItemsSource = context.Cases.ToList();
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
