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

namespace CalcCSGrande
{
   
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        bool Operaciones { get; set; }

        double Numero1, Numero2, Resultado;
        string tipoOperacion = "", Bs = "";


        private void btnSuma_Click(object sender, RoutedEventArgs e)
        {
            tipoOperacion = "+";
            Numero1 = double.Parse(Pantalla1.Text);
            Pantalla2.Text = " + " + Pantalla1.Text;
            Pantalla1.Text = "";
            Operaciones = true;
        }

        private void BtnCE_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text = "";
            Pantalla2.Text = "";
        }

        private void Btn1_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "1";

        }

        private void Btn2_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "2";
        }

        private void Btn3_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "3";
        }

        private void Btn4_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "4";
        }

        private void Btn5_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "5";
        }

        private void btn6_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "6";
        }

        private void Btn7_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "7";
        }

        private void Btn8_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "8";
        }

        private void Btn9_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "9";
        }


        private void BtnBorrar_Click(object sender, RoutedEventArgs e)
        {
            int Control = 0;
            Bs = Pantalla1.Text;
            Control = Bs.Length - 1;

            // Ejemplo region

            #region Control Errores
            // Control de Errores 

            try
            {
                Bs = Bs.Substring(0, Control);
            }
            catch (Exception )
            {

            }

            #endregion

            Pantalla1.Text = Bs;
        }

        private void BtnC_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text = "";
            Pantalla2.Text = "";
        }


        private void BtnResta_Click_1(object sender, RoutedEventArgs e)
        {
            tipoOperacion = "-";
            Numero1 = double.Parse(Pantalla1.Text);
            Pantalla2.Text = " - " + Pantalla1.Text;
            Pantalla1.Text = "";
            Operaciones = true;
        }

        private void btnMulti_Click_1(object sender, RoutedEventArgs e)
        {
            tipoOperacion = "*";
            Numero1 = double.Parse(Pantalla1.Text);
            Pantalla2.Text = " * " + Pantalla1.Text;
            Pantalla1.Text = "";
            Operaciones = true;
        }

        private void BtnDiv_Click_1(object sender, RoutedEventArgs e)
        {
            tipoOperacion = "/";
            Numero1 = double.Parse(Pantalla1.Text);
            Pantalla2.Text = " / " + Pantalla1.Text;
            Pantalla1.Text = "";
            Operaciones = true;
        }

        private void BtnCuadrado_Click(object sender, RoutedEventArgs e)
        {

            Numero1 = double.Parse(Pantalla1.Text);
            Numero2 = Numero1 * Numero1;
            Pantalla2.Text = Numero2.ToString();
            Pantalla1.Text = "";

        }

        private void BtnPunto_Click_1(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text = Pantalla1.Text += ",";

        }

        private void BtnSQRT_Click(object sender, RoutedEventArgs e)
        {
            // Ejemplo de Region
            #region Control de Errores 
            // Control de Errores
            try
            {
                Numero1 = double.Parse(Pantalla1.Text);
            }
            catch (Exception )
            {
                Pantalla1.Text = "Error";
            }

            #endregion

            Resultado = Math.Sqrt(Numero1);
            Pantalla2.Text = "Sqrt " + Numero1.ToString();
            Pantalla1.Text = Resultado.ToString();

        }

       

        private void BtnIgual_Click(object sender, RoutedEventArgs e)
        {
            Numero2 = double.Parse(Pantalla1.Text);

            if (tipoOperacion == "+")
            {
                Resultado = Numero1 + Numero2;
                Pantalla2.Text = Pantalla1.Text + Pantalla2.Text;
                Pantalla1.Text = Resultado.ToString();
            }


            if (tipoOperacion == "-")
            {
                Resultado = Numero1 - Numero2;
                Pantalla2.Text = Pantalla1.Text + Pantalla2.Text;
                Pantalla1.Text = Resultado.ToString();
            }

            if (tipoOperacion == "*")
            {
                Resultado = Numero1 * Numero2;
                Pantalla2.Text = Pantalla1.Text + Pantalla2.Text;
                Pantalla1.Text = Resultado.ToString();
            }

            if (tipoOperacion == "/")
            {
                Resultado = Numero1 / Numero2;
                Pantalla2.Text = Pantalla1.Text + Pantalla2.Text;
                Pantalla1.Text = Resultado.ToString();
            }
        }

        private void Btn0_Click(object sender, RoutedEventArgs e)
        {
            Pantalla1.Text += "0";
        }



      
    }
}
