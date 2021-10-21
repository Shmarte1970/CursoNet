using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace LoginYCalculadoras
{
    /// <summary>
    /// Interaction logic for PantallaSelect.xaml
    /// </summary>
    public partial class PantallaSelect : Window
    {
        public PantallaSelect()
        {
            InitializeComponent();
        }

        private void btn_logout_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();

            main.Show();

            this.Close();
        }

        private void btn_Calc1_Click(object sender, RoutedEventArgs e)
        {
            Calc1 calc1 = new Calc1();

            calc1.Show();

            this.Close();

        }

        private void BtnCalc2_Click(object sender, RoutedEventArgs e)
        {
            Calc2 calc2 = new Calc2();

            calc2.Show();

            this.Close();
        }
    }
}
