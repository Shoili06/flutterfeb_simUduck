import 'package:meta/meta.dart';
main(){
  MallardDuck mallardduck = MallardDuck();
  RedheadDuck redheadduck = RedheadDuck();
  RubberDuck rubberduck = RubberDuck();
  WoodenDuck woodenduck = WoodenDuck();
  
  mallardduck.quack();
  redheadduck.quack();
  //rubberduck.swim();
  //rubberduck.quack();
  //rubberduck.bubble();
  //mallardduck.fly();
  //woodenduck.quack();
}

abstract class Duck implements Duck with FlyBehavior,QuackBehavior{
 /* FlyBehavior _flybehavior;
  QuackBehavior _quackbehavior;
  
  Duck({
    @required QuackBehavior quackbehavior, 
    @required FlyBehavior flybehavior
    }): this._flybehavior =flybehavior,
  			this._quackbehavior = quackbehavior;*/
  
  swim(){
    print("Swim swim swim");
  }
  
}

class MallardDuck extends Duck with FlywithWings, QuackQuack{
 
}
  
 

class RedheadDuck extends Duck with FlywithWings{
   RedheadDuck()
     :super(
    		flybehavior : FlywithWings(),
    		quackbehavior : QuackQuack()
  );
  
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

class FlywithWings implements FlyBehavior{
  @override
  fly(){
    print("Flap flap");
  }
}

class QuackQuack implements QuackBehavior{
  @override
  quack(){
    print("Quack quack");
  }
}


