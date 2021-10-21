using System;

namespace Bucles
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var nombres = new string[5];
            int contador = 0;

            for (int i = 0; i < nombres.Length; i++) 
            {   
                // Utilizando el bucle for para rellenar el Array del Nombre
                nombres[i] = "Nombre"+i;            
            }

            Console.WriteLine("Mostrando valores de Array con While");

            while (contador < nombres.Length) 
            { 
                Console.Write("\n"+nombres[contador]); // recorrido el Array con while
                contador++;
            }

            Console.WriteLine("\n\nMostrando valores de Array con Foreach ");
            
            foreach (var i  in nombres)
            {
                Console.WriteLine(i);
            }
        }
    }
}
