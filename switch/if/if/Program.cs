using System;

namespace Program.cs
{
    internal class Program
{
    static void Main(string[] args)
    {
            var num1 = 8.5;
            var num2 = 9.0;

            Console.WriteLine("Primera serie de numeros");
            GetAverageExamRank(num1, num2);
            PrintAvarege(num1, num2);


           
            var num3 = -5; 
            var num4 = 3.4;

            Console.WriteLine("Segunda serie de numeros");
            GetAverageExamRank(num3, num4);
            PrintAvarege(num3, num4);


        }

        static double GetAverageExamRank(double a, double b) 
        {
            if (a < 0) 
            {
                Console.WriteLine("Las notas no pueden ser negativas");
                return -1;

            }

            if (b < 0)
            {
                Console.WriteLine("Las notas no pueden ser negativas");
                return -1;
            }

            else if ((a <5 ) || (b < 5)) 
            {
                Console.WriteLine("No se puede aprovar con una nota menor que 5");
                return -1;
            }

            var output = (a + b) / 2;
            return output;


        }


        static void PrintAvarege(double a, double b) 
        {
            var avg = (a + b) / 2;
            Console.WriteLine("La media de " + a.ToString() + " y " + b + " es "+avg );
        }
}
}
