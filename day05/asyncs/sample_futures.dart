


Future<void> main() async {

  print("Start");
  await waitForIt(2);
  print("End after 3 seconds");

}


Future<void> waitForIt(int secs) async {
    await Future.delayed(Duration(seconds:secs));
}