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
    /// Логика взаимодействия для AddAccusedWindow.xaml
    /// </summary>
    public partial class AddAccusedWindow : Window
    {
        PoliceEntities context;
        public AddAccusedWindow(PoliceEntities context, Accused accused)
        {
            InitializeComponent();
            this.context = context;
            CmbGender.ItemsSource = context.Genders.ToList();
            this.DataContext = accused;
        }

        private void BtnSaveData_Click(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
            MessageBox.Show("Данные добавлены");
            this.Close();
        }
    }
}
