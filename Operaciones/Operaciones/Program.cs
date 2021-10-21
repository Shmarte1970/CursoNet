using System;

namespace Operaciones {

    class Program { 


        

        static void Main(string[] args)

        {

            int num1, num2, resultado = 0;

            // Sumas 

            num1 = 3;
            num2 = 5;
            resultado = num1 + num2;

            Console.WriteLine("La suma de "+num1+" + "+num2+" es = "+resultado);

            // Resta

            num1 = 5;
            num2 = 2;
            resultado = num1 - num2;

            Console.WriteLine("La resta de " + num1 + " - " + num2 + " es = " + resultado);

            // Multiplicacion 

            num1 = 5;
            num2 = 8;
            resultado = num1 * num2;

            Console.WriteLine("La multiplicacion de " + num1 + " * " + num2 + " es = " + resultado); 

            // Division

            num1 = 8;
            num2 = 2;

            resultado = num1 / num2;

            Console.WriteLine("La división de " + num1 + " * " + num2 + " es = " + resultado);





        }

    }

   

}
