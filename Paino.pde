import processing.sound.*;

SoundFile[] whiteKeySounds = new SoundFile[8];
SoundFile[] blackKeySounds = new SoundFile[5];
String[] whiteKeys = new String[8];
String[] blackKeys = new String[5];
int x;
int w = 75;
int h = 420;

void setup(){
  size(600,400);
  intiliazeWhiteKeys();
  intiliazeBlackKeys();
  intiliazeWhiteKeySoundFiles();
  intiliazeBlackKeySoundFiles();
}
void draw(){
  background(225);
  drawWhiteKeys();
  drawBlackKeys();
}
void intiliazeWhiteKeys(){
  whiteKeys[0] = "c";
  whiteKeys[1] = "d";
  whiteKeys[2] = "e";
  whiteKeys[3] = "f";
  whiteKeys[4] = "g";
  whiteKeys[5] = "a";
  whiteKeys[6] = "b";
  whiteKeys[7] = "High C";
}
void intiliazeBlackKeys(){
  blackKeys[0] = "c#";
  blackKeys[1] = "d#";
  blackKeys[2] = "f#";
  blackKeys[3] = "g#";
  blackKeys[4] = "a#";
}
void intiliazeWhiteKeySoundFiles(){
  for(int i = 0;i < whiteKeySounds.length;i++){
    whiteKeySounds[i] = new SoundFile(this,"Assets/WhiteKeys/" + whiteKeys[i] + ".mp3");
  }
}
void intiliazeBlackKeySoundFiles(){
  for(int i = 0;i < blackKeySounds.length;i++){
    blackKeySounds[i] = new SoundFile(this,"Assets/BlackKeys/" + blackKeys[i] + ".mp3");
  }
}
void drawWhiteKeys(){
  for(int i = 0;i < whiteKeys.length;i++){
    strokeWeight(3);
    x = (i*w)+25;
    fill(255);
    rect(i*w,-25,w,h,30);
    fill(225);
    textSize(48);
    if(i == 7){
      x = (i*w)+20;
    }
  }
}
void drawBlackKeys(){
  fill(0);
  rect(w/2+20,-25,w/2,h/2+40,30);
  rect((w/2+20)+w,-25,w/2,h/2+40,30);
  rect((w/2+20)+(w*3),-25,w/2,h/2+40,30);
  rect((w/2+20)+(w*4),-25,w/2,h/2+40,30);
  rect((w/2+20)+(w*5),-25,w/2,h/2+40,30);
}
void mouseClicked(){
  for(int i = 0;i < whiteKeySounds.length;i++){
    if(mouseX >= 0 & mouseX <= 75){
      whiteKeySounds[0].play();
    }
    else if(mouseX >= 76 & mouseX <= 150){
      whiteKeySounds[1].play();
    }
    else if(mouseX >= 151 & mouseX <= 225){
      whiteKeySounds[2].play();
    }
    else if(mouseX >= 226 & mouseX <= 300){
      whiteKeySounds[3].play();
    }
    else if(mouseX >= 301 & mouseX <= 375){
      whiteKeySounds[4].play();
    }
    else if(mouseX >= 376 & mouseX <= 450){
      whiteKeySounds[5].play();
    }
    else if(mouseX >= 451 & mouseX <= 525){
      whiteKeySounds[6].play();
    }
    else if(mouseX >= 526 & mouseX <= 600){
      whiteKeySounds[7].play();
    }
    if(mouseY >= -25 & mouseY <= 220){
      if(mouseX >= 133 & mouseX <= 207.5){
          blackKeySounds[0].play();
      }
      else if(mouseX >= 208 & mouseX <= 282.5){
          blackKeySounds[1].play();
      }
      else if(mouseX >= 283 & mouseX <= 357.5){
          blackKeySounds[2].play();
      }
      else if(mouseX >= 358 & mouseX <= 432.5){
          blackKeySounds[3].play();
          println("POG");
      }
      else if(mouseX >= 433 & mouseX <= 508){
          blackKeySounds[4].play();
      }
    }
  }
}
