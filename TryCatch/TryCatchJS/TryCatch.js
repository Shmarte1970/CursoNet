document.querySelector('#btn').addEventListener('click', () => {
    Button = 'btn';

    const valor1 = document.querySelector('#valor').value;

    try {
        let numero = parseInt(valor1);
        let cuadrado = numero * numero;
        document.querySelector('#result').innerHTML = "El cuadrado es "+cuadrado;

    } catch (error) {

        alert ('Solo Puedes poner numeros');
        
    }

});