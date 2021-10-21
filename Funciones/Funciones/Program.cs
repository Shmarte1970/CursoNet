using System;


namespace Funciones 
{

    class Program
    {



        static void Main(string[] args)
        {

            double nota1, nota2, media = 0;

            nota1 = 6;  
            nota2 = 8;

            media = CalcularMedia(nota1, nota2);

            Console.WriteLine(media);

            nota1 = 7.3;
            nota2 = 5.5;

            calculMedia(nota1, nota2);



        }


        static void calculMedia(double a, double b) 
        {
            var media = (a + b) / 2;
            Console.WriteLine(media);

        }


        static double CalcularMedia(double a, double b)
        {
            double notaMedia = (a+b) / 2;
            return notaMedia;
        }
    }
}
