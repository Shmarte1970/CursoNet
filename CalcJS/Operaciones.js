let op;
    document.querySelector('#suma').addEventListener('click', () => {
        op = '+';
    });
    document.querySelector('#resta').addEventListener('click', () => {
        op = '-';
    });
    document.querySelector('#multiplicacion').addEventListener('click', () => {
        op = '*';
    });
    document.querySelector('#division').addEventListener('click', () => {
        op = '/';
    });

    document.querySelector('#calcular').addEventListener('click', () => {
        const num1 = parseInt(document.querySelector('#num1').value);
        const num2 = parseInt(document.querySelector('#num2').value);
        let resul;
        if (op == '+') {
            resul = num1 + num2;
        } else if (op == '-') {
            resul = num1 - num2;
        } else if (op == '*') {
            resul = num1 * num2;
        } else if (op == '/') {
            resul = num1 / num2;
        }
        document.querySelector('#r').innerHTML = resul;
    });