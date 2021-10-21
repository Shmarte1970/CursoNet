function CalcularMedia(a, b) {
    var notamedia = (a + b) / 2;
    return notamedia;

}


function calcMedia(a, b) {

    var notamedia = (a + b) / 2;
    var mensaka = "La nota media es " + notamedia;
    console.log(mensaka);

}

// en js primero de declaran las funciones 


// funcion con return
var n1 = 8.7;
var n2 = 7.9;

var media = CalcularMedia(n1, n2);

console.log(media);


// funcion con void 
var nota1 = 9.5;
var nota2 = 8;

calcMedia(nota1, nota2);