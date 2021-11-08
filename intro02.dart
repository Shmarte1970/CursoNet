//MULTIPLICATION TABLE

//CREATE A FUNCTION WITH NUMBER TABLE AS PARAM AND PRINT THE WHOLE
//MULTIPLICATION TABLE
// sample: table(3) prints "3 x 1 = 3"  , "3 x 2 = 6".....

void main(){
  table(7);
}


// SOLO PRINTAR VALORES, EL RESULTADO DE LOS CUALES SEA IMPAR
void table(int multiplier){

  // multiploer = 4
  for(int i = 0; i <= 10;i++){

   // var condition = (multiplier * i) % 2 != 0;

    var condition = (multiplier * i).isOdd;

    if(condition){

      print("$multiplier x  $i = ${multiplier * i}");

    }

    // 4 x 1 = 4
    // 4 x 2 = 8
  }


}