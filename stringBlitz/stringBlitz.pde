PFont f;

//variable to store the string as it's typed:
String typing = "";
String saved = "";

void setup(){
 size(600, 300);
 f = createFont("Monaco", 16, true);
 
}

void draw(){
  background(10, 127, 240);
  int indent = 25;
  
  //set font and fill for text
  textFont(f);
  fill(0);
  
  //display everything
  text("Enter happy moments for good memories. \nHit return to save them.", indent, 40);
  text(typing, indent, 90);
  text(saved, indent, 130);
}

void keyPressed(){
  //if the return key was pressed, save the String and clear it:
  if (key == '\n'){
    saved = typing;
    typing = "";
    }
    if(key == ESC){
      String[] lines = loadStrings("moments.txt");
      println("there are " + lines.length + " lines");
      for(int i = 0; i < lines.length; i++){
        println(lines[i]);
      }
    }else{
    typing = typing + key;
  }
  
}
  
  
