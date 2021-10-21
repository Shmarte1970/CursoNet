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

namespace EntrePantallas
{
    /// <summary>
    /// Interaction logic for Pantalla2.xaml
    /// </summary>
    public partial class Pantalla2 : Window
    {
        public Pantalla2()
        {
            InitializeComponent();
        }

        private void btn_next(object sender, RoutedEventArgs e)
        {
            MainWindow pantalla1 = new MainWindow();

            pantalla1.Show();

            this.Close();

        }
    }
}
