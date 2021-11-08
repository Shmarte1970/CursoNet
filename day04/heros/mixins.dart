mixin Run{


  startRunning(){
    print("I'm starting run");
  }

  accelerate(){
    print("I'm accelerating");
  }

  stopRunning(){
    print("stopping..");
  }

}

mixin Fly{
  takeOff(){
    print("Let's fly!");
  }

  land(){
    print("Landing....");
  }
}

mixin Swim{
  startSwimming(){
    print("swim...");
  }

  stopSwimming(){
    print("stop swimming");
  }
}