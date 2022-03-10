#include <Arduino.h>
#include <Thread.h>
#include <ThreadController.h>

const byte LEDpin[6] = {3, 5, 6, 9, 10, 11};
const unsigned int values[12] = {255, 30, 20, 10, 5, 0, 0, 0, 0, 0, 0, 0};

ThreadController control = ThreadController();
Thread buttonReader = Thread();
Thread lightAnimator = Thread();

//Sync data struct
typedef struct controlSync{
  bool reqLeft;
  bool reqRight;
  bool active;
} controlSync;

controlSync global_control;

void setup() {
  
  for (int k = 0; k < 6; k++) {
    pinMode(LEDpin[k], OUTPUT);
  }
  
  // Right and left segment ground pull
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);

  //Buttons
  pinMode(A1, INPUT);
  pinMode(A0, INPUT);

  //Brakes light
  pinMode(A4, OUTPUT);

  //Button lights
  pinMode(2, OUTPUT);
  pinMode(4, OUTPUT);

  //pinMode(LED_BUILTIN, OUTPUT);
  
  digitalWrite(A4, LOW);
  digitalWrite(A2, LOW);
  digitalWrite(A3, LOW);
  //digitalWrite(LED_BUILTIN, LOW);

  //Threads configuration
  buttonReader.onRun(readButtons);
  buttonReader.setInterval(50);

  lightAnimator.onRun(animateLights);
  lightAnimator.setInterval(50);

  control.add(&buttonReader);
  control.add(&lightAnimator);
}

void turnLed(int pos, int value) {

  for (int i = 0; i < 6; i++) {
    analogWrite(LEDpin[i], 0); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
  }
  if (pos >= 0 && pos <= 11) {

    if (pos > 5) {
      digitalWrite(A3, HIGH);
      digitalWrite(A2, LOW);
      analogWrite(LEDpin[pos - 6], value); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    }
    else {
      digitalWrite(A3, LOW);
      digitalWrite(A2, HIGH);
      analogWrite(LEDpin[pos], value); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    }
  }
  delay(1);
}

void turnLeft() {
  
  for (int j = 0; j < 24; j++) {
    for (int i = 0; i < 2; i++) {
      turnLed(j, 255);
      turnLed(j - 1, 255);
      turnLed(j - 2, 255);
      turnLed(j - 3, 255);
      turnLed(j - 4, 255);
      turnLed(j - 5, 255);
      turnLed(j - 6, 255);
      turnLed(j - 7, 255);
      turnLed(j - 8, 255);
      turnLed(j - 9, 255);
      turnLed(j - 10, 255);
      turnLed(j - 11, 255);
    }
  }
  digitalWrite(A2, LOW);
  digitalWrite(A3, LOW);
}

void turnRight() {

  for (int j = 24; j > 0; j--) {
    for (int i = 0; i < 2; i++) {
      turnLed(j, 255);
      turnLed(j - 1, 255);
      turnLed(j - 2, 255);
      turnLed(j - 3, 255);
      turnLed(j - 4, 255);
      turnLed(j - 5, 255);
      turnLed(j - 6, 255);
      turnLed(j - 7, 255);
      turnLed(j - 8, 255);
      turnLed(j - 9, 255);
      turnLed(j - 10, 255);
      turnLed(j - 11, 255);
    }
  }
  digitalWrite(A2, LOW);
  digitalWrite(A3, LOW);
}

void loop() {
  control.run();
}

void readButtons(){

   if(global_control.active == false){
    if(digitalRead(A0)){
      global_control.reqLeft = true;
    }
    if(digitalRead(A1)){
      global_control.reqRight = true;
    }
  }
  else{
    while(digitalRead(A0)||digitalRead(A1)){
      global_control.active = false;
      global_control.reqLeft = false;
      global_control.reqRight= false;
      delay(300);
    }
  }
}

void animateLights(){
   
   if(global_control.reqRight){
     global_control.reqRight == false;
     global_control.active = true;
           
     digitalWrite(2, HIGH);
     digitalWrite(4, HIGH);
     turnRight();
     delay(100);
     digitalWrite(2, LOW);
     digitalWrite(4, LOW);
     delay(1<00);
   }
   
   else if(global_control.reqLeft){
     global_control.reqLeft == false;
     global_control.active = true;
   
     digitalWrite(2, HIGH);
     digitalWrite(4, HIGH);
     turnLeft();
     digitalWrite(2, LOW);
     digitalWrite(4, LOW);
     delay(200);
   }  
}
