```actionscript
// Unexpected behavior when using a Timer with a nested function

var myTimer:Timer = new Timer(1000, 0);
myTimer.addEventListener(TimerEvent.TIMER, timerHandler);
myTimer.start();

function timerHandler(event:TimerEvent):void {
  // This nested function references 'event'
  var nestedFunc:Function = function():void {
    trace(event.type); // Accessing event inside nested function
  };

nestedFunc();
}
```