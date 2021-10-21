using System;

namespace TryCatch
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Console.WriteLine("Introduce un numero ");

                String numeroString = Console.ReadLine();

                var num = int.Parse(numeroString);

                var cuadrado = num * num;

                Console.WriteLine("El cuadrado es "+cuadrado.ToString());


            }
            catch (FormatException e)
            {
                Console.WriteLine("Tienes que poner numeros enteros ");


            }

            Console.ReadKey(); // Espera pulsa una tecla

          

            


        }
    }
}
