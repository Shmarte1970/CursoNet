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
    /// Interaction logic for Calc1.xaml
    /// </summary>
    public partial class Calc1 : Window
    {
        public Calc1()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            PantallaSelect pantallaSelect= new PantallaSelect();

            pantallaSelect.Show();

            this.Close();
        }

        private void BtnSuma_Click(object sender, RoutedEventArgs e)
        {
            Suma(PantallaNum1.Text, PantallaNum2.Text);
        }



        private void Suma(string numero1, string numero2)
        {



            int num1 = int.Parse(PantallaNum1.Text);
            int num2 = int.Parse(PantallaNum2.Text);


            int resultado = num1 + num2;



            PantallaResultado.Content = num1 + " Más " + num2 + " = " + resultado;
            PantallaNum1.Text = "";
            PantallaNum2.Text = "";

        }

        private void BtnResta_Click(object sender, RoutedEventArgs e)
        {
            Resta(PantallaNum1.Text, PantallaNum2.Text);
        }

        private void Resta(string numero1, string numero2)
        {

            int num1 = int.Parse(PantallaNum1.Text);
            int num2 = int.Parse(PantallaNum2.Text);


            int resultado = num1 - num2;

            PantallaResultado.Content = num1 + " Menos " + num2 + " = " + resultado;
            PantallaNum1.Text = "";
            PantallaNum2.Text = "";

        }

        private void BtnMulti_Click(object sender, RoutedEventArgs e)
        {
            Multi(PantallaNum1.Text, PantallaNum2.Text);
        }

        private void Multi(string numero1, string numero2)
        {

            int num1 = int.Parse(PantallaNum1.Text);
            int num2 = int.Parse(PantallaNum2.Text);


            int resultado = num1 * num2;

            PantallaResultado.Content = num1 + " Por " + num2 + " = " + resultado;
            PantallaNum1.Text = "";
            PantallaNum2.Text = "";

        }

        private void BtnDiv_Click(object sender, RoutedEventArgs e)
        {
            Division(PantallaNum1.Text, PantallaNum2.Text);
        }

        private void Division(string numero1, string numero2)
        {

            float num1 = int.Parse(PantallaNum1.Text);
            float num2 = int.Parse(PantallaNum2.Text);


            float resultado = num1 / num2;

            PantallaResultado.Content = num1 + " Dividido por " + num2 + " = " + Math.Round(resultado, 2);
            PantallaNum1.Text = "";
            PantallaNum2.Text = "";


        }

        private void btn_Exit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
