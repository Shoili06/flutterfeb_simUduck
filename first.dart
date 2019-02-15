
main(){
  MallardDuck mallardduck = MallardDuck();
  RedheadDuck redheadduck = RedheadDuck();
  RubberDuck rubberduck = RubberDuck();
  WoodenDuck woodenduck = WoodenDuck();
  
  mallardduck.quack();
  redheadduck.quack();
  rubberduck.swim();
  rubberduck.quack();
  rubberduck.bubble();
  mallardduck.fly();
  woodenduck.quack();
}

abstract class Duck implements Flyable,Quackable{
  swim(){
    print("Swim swim swim");
  }
  
  /*quack(){
    print("Quack quack quack ");
  }
  
  fly(){
    print("Flap flap flap");
  }*/
}

class MallardDuck extends Duck{
  @override
  fly(){
    print("Flap flap flap");
  }
  
  @override
  quack(){
    print("Quack quack quack");
  }
}

class RedheadDuck extends Duck{
  @override
  fly(){
    print("Flap flap flap");
  }
  
  @override
  quack(){
    print("Quack quack quack");
  }
  
}

class RubberDuck extends Duck{
  @override
  fly(){
    print("I don't fly.");
  }
  
  @override
  quack(){
    print("Quack quack quack");
  }
  
  bubble(){
    print("Blob blob blobe");
  }
  
}

class WoodenDuck extends Duck{
  @override
  fly(){
    print("I don't fly.");
  }
  
  @override
  quack(){
    print("Mute");
  }
  
}

abstract class Flyable{
  fly();
}

abstract class Quackable{
  quack();
}

