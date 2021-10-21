

console = {
    WriteLine :function(msg)
    {
        console.log(msg);
    }
}

GetAverageExamRank(a, b)
{
    if (a < 0) 
    {
        Console.log("Las notas no pueden ser negativas");
        return -1;

    }

    if (b < 0)
    {
        Console.WriteLine("Las notas no pueden ser negativas");
        //return -1;
    }

    else if ((a <5 ) || (b < 5)) 
    {
        Console.WriteLine("No se puede aprovar con una nota menor que 5");
        //return -1;
    }

    var output = (a + b) /2;
    // return output;

}

/*
var num1 = 8.5;
var num2 = 9.0;

PrintAverage(num1, num2);

var num3 = 9.4;
var num4 = 3.4;

PrintAverage(num3, num4);

*/



Main()
{

    var num1 = 8.5;
    var num2 = 9.0;


    GetAverageExamRank(num1, num2);

    var num3 = -5;
    var num4 = 3.4;

    GetAverageExamRank(num3, num4);

    var a = num1 < num2;

    var b = num1 > num2;

    var c = num3 == num4;

    var d = num3 != num4;

    if (a)
    {

    }

    if (b)
    {

    }

    if (c){

    }

    if (d)
    {

    }

    var e = c != d;

    if (!c)
    {

    }

    var g = num1 <= num2;
    var h = num1 >= num2;

}

Main();






