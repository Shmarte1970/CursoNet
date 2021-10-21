   let nombres = new Array() // No definimos tamaño de array para no entrar 
   let nom = new Array(5);
   let contador = 0; // En confilto con el push
   let cuenta = 0;
   /* Para cada while hay que definir una variable de contador 
    no se puede usar la misma en los dos whiles*/

   console.log('Llenando Array Nombres con push en un bucle for');

   for (let i = 0; i < 5; i++) { // Rellenando array con bucle
       // 
       //nombres[i] = "Nombre" + i; 

       nombres.push("Valor" + i)
           /* Atencion el push incrementa en 1 cada vez
              Que pasamos por el. En este ejercicio se incrementa en 5 
              por ese motivo no definimos un numero en el array y tampoco 
              uso el lenght en el for*/
   }

   console.log("Llenando Array Nom con contador en un bucle for");

   for (let i = 0; i < nom.length; i++) {

       nom[i] = "Nom" + i;


   }

   console.log("Mostrando Array Nom con contador en un bucle While");

   while (contador < nom.length) {

       console.log(nom[contador])

       contador++;

   }



   console.log("\n Mostrando datos del array Nombre con un while")

   while (cuenta < nombres.length) {

       console.log(nombres[cuenta])

       cuenta++;

   }
   console.log("\n Mostrando datos del array con ForEach");

   nombres.forEach(element => {

       console.log(element)

   });