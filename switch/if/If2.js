

    


function GetAverageExamRank ( a, b )
{

    if ( a < 0)
    {        
        document.write ("Las notas no pueden ser negativas");        
    }

    else if ( b < 0)
    {
        document.write ("Las notas no pueden ser negativas");
    }

    else if ((a<5) || (b<5)) 
    {
     
        document.write ("<br/>No se puede aprovar con una nota menor que 5");

    }else{

        var resul = (a + b) /2;

        return resul;
        
    }

    var resul = 0;

    return resul;

}



let num1 = 5;
let num2 = 6;
let resultado;

resultado = GetAverageExamRank(num1, num2)

document.write("La nota " +num1+ " + La nota  " +num2 );
document.write(" La media es<br/> "+resultado+"<br/>");

let num3 = -3;
let num4 = 5;

resultado = GetAverageExamRank(num3, num4)

document.write("<br/>La nota"+num3+" + la nota "+num4);
document.write(" La media es<br/> "+resultado+"<br/>");

