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

namespace LoginYCalculadoras
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btn_Login_Click(object sender, RoutedEventArgs e)
        {
            string usuario = TextBoxUser.Text;
            string password = TextBoxPass.Password;

            if (usuario == "LindaPandero" && password == "1234")
            {
                PantallaSelect pantalla2 = new PantallaSelect();
                pantalla2.Show();
                this.Close();
            }
            else 
            {
                labelResul.Content = "Usuario no reconocido";
                TextBoxUser.Text = "";
                TextBoxPass.Password = "";
            }
        }

        private void btn_exit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
