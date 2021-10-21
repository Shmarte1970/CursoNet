

document.querySelector('#Login').addEventListener('click', () => {
    Login = 'Login';


    const valor1 = document.querySelector('#email').value;
    const valor2 = document.querySelector('#pass').value;

    if (valor1 == 'LindaPandero' && valor2 == '1234') {
        document.querySelector('#confirma').innerHTML = "Datos Correctos";
        // document.querySelector('#Tengo').innerHTML = valor1 + " " + valor2;
    } else {
        document.querySelector('#confirma').innerHTML = "Error en los datos";
        // document.querySelector('#Tengo').innerHTML = valor1 + " " + valor2;
    }

});