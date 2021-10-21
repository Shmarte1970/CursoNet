using System;

namespace ClasesyObjetos
{
    internal class Program
    {
        static void Main(string[] args)
        {
          //  Console.WriteLine("Hello World!");

        // La programación orienteda a Objetos no esta orientada a lo que es un objeto en la vida cotidiana
        // La programación orientada a Objetos es una manera de escribir codigo para la resolución de problemas.
        // Para la poo crearemos clases que iremos utilizando en distintos procesos.
        // Que es una clase (No es un aula con alumnos ;D). Definición de como es un objeto (Molde) para crear el objeto. Datos que va a tener por ejemplo.
        // las clases se suelen coloar en ficheros nuevos. Las tendremos separadas del resto del codigo. Util y organizativo.


            // Primera instacia del Objeto persona.
            
            Person person1 = new Person();
            person1.Name = "Dolores Fuertes";
            person1.Age = 21;

            // Podemos crear tantos Objetos como queramos, voy con otro poo person.

            Person person2 = new Person(); // Aqui tenemoes a la person2, que tiene datos distintos a person1.
            person2.Name = "Armando Bronca";
            person2.Age = 32;

            // Y asi podemos crear todos los que queramos.

            // Como los muestro por pantalla
            Console.WriteLine("El nombre de Persona1 es "+person1.Name + " Y tiene una edad de  " + person1.Age); // Esta es 
            // Tambien los poedo usar de la siguiente manera (Mas correcto)
            Console.WriteLine($"El nombre de Persona2 es {person2.Name} y su edad es de {person2.Age}"); // Aqui inicio con $, despues meto comillas al principio y final y los objetos entre {}

            // Instancio el Objeto Rectanculo uno, dos  y les paso unos valores.

            MetodoRectangulo rectangulo1 = new MetodoRectangulo();

            // mucho cuidado de donde pongo el concole.wrte ya que si lo pongo antes de pasarle valoes al objeto me saldra con valor 0 o null

            rectangulo1.baseRectangulo = 5;
            rectangulo1.heightRectangulo = 9;

            Console.WriteLine($"EL area del rectangolo con base {rectangulo1.baseRectangulo} y con una altura de {rectangulo1.heightRectangulo} es de {rectangulo1.areaRectangulo()}");

            MetodoRectangulo rectangulo2 = new MetodoRectangulo();
            
            rectangulo2.baseRectangulo = 3;
            rectangulo2.heightRectangulo = 7;

            Console.WriteLine($"EL area del rectangolo con base {rectangulo2.baseRectangulo} y con una altura de {rectangulo2.heightRectangulo} es de {rectangulo2.areaRectangulo()}");

            Console.WriteLine($"El area del rectangulo 1 es {rectangulo1.areaRectangulo()} y la del rectangulo2 es de {rectangulo2.areaRectangulo()}, por lo que la diferencia es {rectangulo1.comparaArea(rectangulo2)}"); // aqui puedo ver que el parametro que le paso la Metodo comparar area es el del Triangulo2 

            MetodoRectangulo rectangulo3 = new MetodoRectangulo();

            rectangulo3.baseRectangulo = 4;
            rectangulo3.heightRectangulo = 5;

            Console.WriteLine($"EL perimetro del rectangolo con base {rectangulo3.baseRectangulo} y con una altura de {rectangulo3.heightRectangulo} es de {rectangulo3.perometroRectangulo()}\n");

            rectangulo3.incrementRectanculos(10);

            Console.WriteLine("Los nuevos valores de rectangulo 3 son:\n");
            Console.WriteLine($"EL perimetro del rectangolo con base {rectangulo3.baseRectangulo} y con una altura de {rectangulo3.heightRectangulo} es de {rectangulo3.perometroRectangulo()}");














        }
    }
}
