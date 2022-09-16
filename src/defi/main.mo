import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor Dbank {
  stable var currentValue: Float = 300;
  // currentValue := 300;


  stable var startTime = Time.now();
  // startTime := Time.now();
  Debug.print(debug_show(startTime));

  let id = 234324324343343;

  // Debug.print(debug_show(id));

//private function
  public func topUp(amount: Float) {
    // currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  // topUp();

  public func witdraw(amount: Float) {
    let tempValue: Float = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Insufficient funds");
    };
    
  };

  //for fast call i.e you are not updating state you just need the value use query
  public query func checkBalance(): async Float {
    return currentValue;
  };

  public func compoundInterest() {
    let currentTime = Time.now();
    let timeElaspeNS = currentTime - startTime;
    let timeElaspeS = timeElaspeNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElaspeS));
    startTime := currentTime;
  };
}
