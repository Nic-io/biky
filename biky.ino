const byte LEDpin[6] = {3, 5, 6, 9, 10, 11};
const unsigned int values[12] = {255, 30, 20, 10, 5, 0, 0, 0, 0, 0, 0, 0};

void setup() {
  for (int k = 0; k < 6; k++) {
    pinMode(LEDpin[k], OUTPUT);
  }
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  pinMode(A1, INPUT);
  // pinMode(A5, OUTPUT);
}

void turnLed(int pos, int value) {


  for (int i = 0; i < 6; i++) {
    analogWrite(LEDpin[i], 0); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
  }

  if (pos >= 0 && pos <= 11) {

    if (pos > 5) {
      digitalWrite(A3, LOW);
      digitalWrite(A2, HIGH);
      analogWrite(LEDpin[pos - 6], value); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    }
    else {
      digitalWrite(A3, HIGH);
      digitalWrite(A2, LOW);
      analogWrite(LEDpin[pos], value); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    }
  }
  delay(1);
}

int getvalue(int val) {
  if (val < 0) {
    return 0;
  }
  else {
    return values[val];
  }
}

void startTrailing() {

  for (int j = 0; j < 12; j++) {
    for (int i = 0; i < 3; i++) {
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

  digitalWrite(A2, HIGH);
  digitalWrite(A3, HIGH);
  analogWrite(LEDpin[0], 255); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
  analogWrite(LEDpin[1], 255); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
  analogWrite(LEDpin[2], 255); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
  analogWrite(LEDpin[3], 255); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
  analogWrite(LEDpin[4], 255); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
  analogWrite(LEDpin[5], 255); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255

  for (int j = 255; j > 0 ; j--) {
    analogWrite(LEDpin[0], j); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    analogWrite(LEDpin[1], j); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    analogWrite(LEDpin[2], j); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    analogWrite(LEDpin[3], j); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    analogWrite(LEDpin[4], j); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    analogWrite(LEDpin[5], j); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
    delay(2);
  }
  delay(100);

  digitalWrite(A2, LOW);
  digitalWrite(A3, LOW);
}

void loop() {
  //if(digitalRead(A1)){
  //digitalWrite(A5,HIGH);
 // startTrailing();
  // }

  delay(10);
}
