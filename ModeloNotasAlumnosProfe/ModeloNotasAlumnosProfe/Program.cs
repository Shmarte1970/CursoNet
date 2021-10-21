using System;
using System.Collections.Generic; // Hay que usar esta linea para utilizar listas
using System.Linq;

namespace ModeloNotasAlumnosProfe
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // declaración de variables
            var notasDealumnos = new List<double>(); // Se define una lista donde almacenaremos los datos que se introduciran por pantalla
            var condicion = true; // Declaración dde una variable true para conficionar el estado del While
            var palabrareservada = "salir";
            var notaText = " ";
            var nota = 0.0;
            var suma = 0.0;
            double media;
            var segundomenu="";
            var ResulNota = 0.0;
            var Comentario = "";
            

            // Esto son simplement dos lineas de presentación
            Console.WriteLine("Bienvenid@ al programa para gestión de notas");  
            Console.WriteLine("Introduzca las notas de los alumnos");
            Console.WriteLine("Escriba salir para terminar la introducción de datos");
             
            // Inicio de la peticion de datos en un Bucle While
            while (condicion) 
            {
                Console.WriteLine($"Introduce nota del Alumno {notasDealumnos.Count + 1}:"); // Mensaje por pantalla pidiendo la nota, el Count+1 va a permitir el incremento del alumno
            
                notaText = Console.ReadLine();

                // comprovar si se ha introducido la palabra reservada para deterner el while
                if (notaText == palabrareservada)
                {
                    // Cambio de estado en la condición.
                    condicion = false;
                }
                else 
                {    // Intercambio de punto por la coma y salida a variable nota 
                    if (double.TryParse(notaText.Replace(".", ","), out nota))
                    {
                        // Insercion de los datos en la lista de alumnos
                        notasDealumnos.Add(nota);
                    }
                    else 
                    {
                        // Mensaje notificando que los datos introducidos no son correctos
                        Console.Write("Los datos no son correctos");
                    }
                }

            }


            // Bucle for donde se recorre la lista de alumnos "Atención al Count"
            for (int i =0; i<notasDealumnos.Count; i++) 
            {
                // Se suma cada una de las notas de alumnos y se almacena en la variable suma
                suma += notasDealumnos[i];
            }

            // calcula de la media de los alumnos el valor de suma dividido por el numero de notas introducidas y almacenado en media
            media = suma / notasDealumnos.Count;


            // Pintar en pantalla la media 
            Console.WriteLine("La media de las notas es {0}", media);

            condicion = true;

            while (condicion) 
            {
                Console.WriteLine("Introduce 1 para ver la nota Maxima y 2 para ver la minima escribe salir para terminar");
                segundomenu = Console.ReadLine();

                if (segundomenu == palabrareservada)
                {
                    // Cambio de estado en la condición.
                    condicion = false;
                }
                else 
                {
                    // 
                    if (segundomenu == "1")
                    {
                        ResulNota = notasDealumnos.Max();
                        Comentario = "La nota mas alta es ";
                        condicion = false;

                    }
                    else if (segundomenu == "2") 
                    { 
                        ResulNota = notasDealumnos.Min();
                        Comentario = "La nota mas baja es ";
                        condicion = false;
                    }
                    
                }


            }

            Console.WriteLine(Comentario +" "+ResulNota);
            




        }
    }
}
