void output_Finish(){
//output code
output = createWriter(dataPath("") +"/output/" + "output.ino");
//the following code puts arduino code between quotations and puts into the output.ino file. Easy.
// the \n is for new line. if there are any special characters to put into your arduino sketch you need to put \ in front
// for example if you needed to add #include "FastLED.h" it looks like this:
// + "#include \"FastLED.h\" \n"
//I have included a variable below to change the delay according to which button was pressed

output.println("// Most of this code is the hard work of the Processing and Arduino teams // \n"
+ " \n"
+ "  \n"
+ "/*  \n"
+ "  Blink  \n"
+ "  Turns on an LED on for one second, then off for one second, repeatedly.  \n"
+ "   \n"
+ "  This example code is in the public domain.  \n"
+ " */  \n"
+ "   \n"
+ "// Pin 13 has an LED connected on most Arduino boards.  \n"
+ "// give it a name:  \n"
+ "int led = 13;  \n"
+ "  \n"
+ "// the setup routine runs once when you press reset:  \n"
+ "void setup() {          \n"        
+ "  // initialize the digital pin as an output.  \n"
+ "  pinMode(led, OUTPUT);       \n"
+ "}  \n"
+ "  \n"
+ "// the loop routine runs over and over again forever:  \n"
+ "void loop() {  \n"
+ "  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)  \n"
+ "  delay(" + delay + ");               // wait for a second  \n"
+ "  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW  \n"
+ "  delay(" + delay + ");               // wait for a second  \n"
+ "}"); //end output.println

output.flush(); //this writes all to output.ino

}//end output_Finish
