//LISTAS
//LOOP OVER LIST AND ADD 3 TO VALUES GREATER THAN 6 AND 2 TO VALUES
//LOWER OR EQUAL THAN 6.

//PRINT UPDATED LIST

void main(){
  print("Hello world");

  //DECLARE LIST WITH VALUES 3,6,7,8,9,10
  List<int> list = [3,6,7,8,9,10];

  for(var i = 0; i < list.length; i++){

    list[i] > 6 ? list[i] += 3 : list[i] += 2;

    //list[i] ++; // list[i] += 1;
  }

  print("list updated is: ${list}");








}