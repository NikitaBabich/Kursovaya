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
    /// Логика взаимодействия для AddVictimWindow.xaml
    /// </summary>
    public partial class AddVictimWindow : Window
    {
        PoliceEntities context;
        public AddVictimWindow(PoliceEntities context, Victim victim)
        {
            InitializeComponent();
            this.context = context;
            CmbGender.ItemsSource = context.Genders.ToList();
            this.DataContext = victim;
        }

        private void BtnSaveData_Click(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
            MessageBox.Show("Данные добавлены");
            this.Close();
        }
    }
}
