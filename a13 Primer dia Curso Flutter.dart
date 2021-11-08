void main() {
  String myName = "Pedro";
  String mySurname = "rios";

  String myfullName = myName + " " + mySurname;

  print("Mi nombre es $myfullName");

  var letterToCheck = "Edri";

  var hasAnA = myfullName.toUpperCase().contains(letterToCheck.toUpperCase());

  print(hasAnA);

  print(Xname(myName, "Marc"));

  
}

Xname(String fullname, String nameReplace) {
  var list = fullname.split("");
  list[0] = nameReplace;

  return list[0] + " " + list[1];
}
