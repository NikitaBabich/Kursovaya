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
    /// Логика взаимодействия для AddCaseWindow.xaml
    /// </summary>
    public partial class AddCaseWindow : Window
    {
        PoliceEntities context;
        public AddCaseWindow(PoliceEntities context)
        {
            InitializeComponent();
            this.context = context;
            CmbJudge.ItemsSource = context.Judges.ToList();
            CmbAccused.ItemsSource = context.Accuseds.ToList();
            CmbVictim.ItemsSource = context.Victims.ToList();
            //this.DataContext = case;
        }

        private void BtnSaveData_Click(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
            MessageBox.Show("Данные добавлены");
            this.Close();
        }
    }
}
