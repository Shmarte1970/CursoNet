/* Distintas formas de crear un objeto en JS
directamente o con constructor
*/

// Directamente

let person1 = {Nombre:"Dolores Fuertes", edad:21}; // le doy dos propiedades el objeto person que son Nombre y edad

console.log(person1); // por consola nos muestra el objeto person con dos propiedades.

function Person (nombre, edad, casado){   // defino un CONSTRUCTOR con unos parametros.
    this.Nombre = nombre;
    this.Edad = edad;
    this.Casado = casado;
}

// ahora creo el objeto.

let person2 = new Person ("Armando Bronca", 32, "Casado"); // Creo el Objeto y relleno todos sus parametros.

console.log(person2); // por consola nos muestra el objeto person2 con tres propiedades.

function Rectangulo (base, altura, incremento)
{
    this.Base = base;
    this.Altura = altura;
    this.Incremento = incremento;
}

let Recta1 = new Rectangulo (5,9,10);

let Area1 = Recta1.Base * Recta1.Altura;

console.log("El Area del Recta1 es de " + Area1); // Asigno a la variable Area1 la multiplicacion de los parametros de React1 que es el objeto.

let NewBase = Recta1.Base + Recta1.Incremento; // Asigno a la variable el valor de sumar la base mas el increment.
let NewAltura = Recta1.Altura + Recta1.Incremento;
let NewArea1 = NewBase * NewAltura;  // recalculamos el area con los nuevos valores

console.log("El nuevo area de React1 es de " + NewArea1 ); // Modificando el numero 10 de los parametros del Objeto React1 por otro numero nos recalcular el valor.

// Tambien se pueden definir variable pero no seran accesibles.

function AreaCirculo (areacirculo)
{
    this.AreaCirculo = areacirculo;
    let pi = 3.141592;  // Esto es una variable dentro de un objeto, pero no se puede instanciar
    this.getPI = function(){ // para poder usarla tengo que usar this mas function
        return pi;
    }
}


let NuevaArea1 = new AreaCirculo (10);
let resulArea = NuevaArea1.getPI()* NuevaArea1.AreaCirculo*NuevaArea1.AreaCirculo; 
console.log("El area resultante es "+resulArea);



