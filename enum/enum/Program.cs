using System;
using System.Collections.Generic;

namespace ConsoleApp2 { 

    class Program
    {

        static int CurrentaYear = 2021;

        static void Main(string[] args)
        {
            Console.WriteLine("");

            var monday = "Lunes";
            var tuesday = "Martes";

            var todayIs = Days.Jueves;

            var mensaje = "Hola hoy es " + todayIs;          

            Console.WriteLine(mensaje);

            todayIs = Days.Miercoles;

            mensaje = "Hola hoy es " + todayIs;

            Console.WriteLine(mensaje);
        }
    }

    public enum Days { 

        Lunes = 1,
        Martes = 2,
        Miercoles = 3,
        Jueves = 4,
        Viernes = 5,
        Sabado = 6,
        Domingo = 7


    }

}