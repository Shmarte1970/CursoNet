using System;

namespace Program.cs
{
    internal class Program
{
    static void Main(string[] args)
    {
        var DiaSemana = 1;

        switch (DiaSemana) 
        { 
            case 1:
                Console.WriteLine("Lunes");
                break;
            case 2:
                Console.WriteLine("Martes");
                break;
            case 3:
                Console.WriteLine("Miercoles");
                break;
            case 4:
                Console.WriteLine("Jueves");
                break;
            case 5:
                Console.WriteLine("Viernes");
                break;
            case 6:
                Console.WriteLine("Sabado");
                break;
            case 7:
                Console.WriteLine("Domingo");
                break;
            default:
                Console.WriteLine("No existe el dia");
                break;
        }
    }
}
}
