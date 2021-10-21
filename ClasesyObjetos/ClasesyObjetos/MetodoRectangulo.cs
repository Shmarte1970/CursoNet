using System;
using System.Collections.Generic;
using System.Text;

namespace ClasesyObjetos
{
    public class MetodoRectangulo // Tengo que recordar que las clases tiene que ser publicas ...... hay hay .... que se me pasa :(
    {
        public double baseRectangulo;
        public double heightRectangulo;

        // ahora tengo que crear un metodo para poder usar los campos de cada objeto que he definido en el main.

        public double areaRectangulo()  // no se hay que usar static ya que este metodo hace referencia a la clase MetodoRestangulo.
                                        // a diferencia de cuando uso static para llamar una funcion dentro del propio main. Son cosas DISTINTAS
                                        // ATENCION cuando lo creo me sale error y eso es porque no el he dado valores de devolver.
        {
            double AreaRectangulo = this.baseRectangulo * this.heightRectangulo;
                                    // El this hace referencia al objeto que instancio. Puede ser rectangulo1, o dos. 
                                    // es como decir rectangulo1.baseRectangulo. Lo que pasa es que esta afeccion no es valida y se pone en lugar del nombre del Objeto el this.
            return AreaRectangulo;
        }

        public double perometroRectangulo() 
        {
            double perimetroRectanculo = this.baseRectangulo + this.heightRectangulo + this.baseRectangulo + this.heightRectangulo ;
            return perimetroRectanculo;
        }

        // ahora voy a crear otro medodo que reciba datos y se lo sume al valor de la base  y la altura para incrementarlos.

        public void incrementRectanculos(double /* Tipo de valor*/ incrementa ) 
        {
            this.baseRectangulo = this.baseRectangulo + incrementa;
            this.heightRectangulo = this.heightRectangulo + incrementa;
        }

        // Mas difil todavia voy acompara dor areas de rectangulos

        public double comparaArea(MetodoRectangulo rec)  // Le paso valores del MetodoRectangulo
        { 
            return this.areaRectangulo() - rec.areaRectangulo(); // Con this le paso los valores del objeto y con rec los del metodo.
        }
    }
}
