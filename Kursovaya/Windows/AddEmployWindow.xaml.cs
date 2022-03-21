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
    /// Логика взаимодействия для AddEmployWindow.xaml
    /// </summary>
    public partial class AddEmployWindow : Window
    {
        PoliceEntities context;
        public AddEmployWindow(PoliceEntities context, Employe employe)
        {
            InitializeComponent();
            this.context = context;
            CmbGender.ItemsSource = context.Genders.ToList();
            CmbPost.ItemsSource = context.Posts.ToList();
            CmbSubsections.ItemsSource = context.Subsections.ToList();
            CmbTitle.ItemsSource = context.Titles.ToList();
            this.DataContext = employe;
        }

        private void BtnSaveData_Click(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
            MessageBox.Show("Данные добавлены");
            this.Close();
        }
    }
}
