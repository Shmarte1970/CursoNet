using System;
using System.Collections.Generic;

namespace ConsoleApp2 { 

    class Program
    {

        static int CurrentYear = 2020;

        static void Main(string[] args) {

            Console.WriteLine("Curso .NET");

            int year = 2021;

            int [] years = new int[4];

            var UltimoElemento = years.Length;

            years[0] = 1929;
            years[1] = 1936;
            years[2] = 1939;
            years[3] = 1945;

            for (int i = 0; i < years.Length; i++)
            {
                Console.WriteLine(years[i]);
            }

            // Console.WriteLine(years.Length);
            Console.WriteLine("");

            List<string> yearslist = new List<string>();

            yearslist.Add("Bosnia");
            yearslist.Add("Saragevo");
            yearslist.Add("Kuwait");
            yearslist.Add("Irak");
            yearslist.Add("Afganistan");

            yearslist.ForEach(Console.WriteLine);

            var OlimpicYears = new Dictionary<int, string>();

            OlimpicYears.Add(1, "1992-Barcelona");
            OlimpicYears.Add(2, "1996-Atlanta");
            OlimpicYears.Add(3, "2000-Sidney");
            OlimpicYears.Add(4, "2004-Atnas");
            OlimpicYears.Add(5, "2008-Pekin");
            OlimpicYears.Add(6, "2012-Londres");

            Console.WriteLine("");
            OlimpicYears.ToList().ForEach(x=>Console.WriteLine(x.Value));
           
            

                


        }

       
    }

}
