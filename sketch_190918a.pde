import controlP5.*;
import processing.sound.*;
 ControlP5 cp5;
 int cf,y;
SoundFile file;
 boolean f=false;
 Slider mySlider;
 void setup() {
   size(800,800);
   cf=1;
   cp5= new ControlP5(this);
   PImage[] btn={ loadImage("1.png"),loadImage("1.png"),loadImage("1.5.png")};
    PImage[] btn2={ loadImage("2.png"),loadImage("2.png"),loadImage("2.5.png")};
    PImage[] btn3={ loadImage("3.png"),loadImage("3.png"),loadImage("3.5.png")};
    PImage[] btn4={ loadImage("4.png"),loadImage("4.png"),loadImage("4.5.png")};
    PImage[] btn5={ loadImage("open.png"),loadImage("open.png"),loadImage("open1.png")};
     PImage[] btn6={ loadImage("close.png"),loadImage("close.png"),loadImage("close1.png")};
   mySlider=cp5.addSlider("Floor").setPosition(240,30).setSize(400,40).setRange(1,4).setValue(cf);
   cp5.addButton("floor1").setValue(0).setPosition(400,400).setImages(btn).setSize(70,70).updateSize();
   cp5.addButton("floor2").setValue(0).setPosition(400,330).setSize(70,70).setImages(btn2).updateSize();
   cp5.addButton("floor3").setValue(0).setPosition(400,260).setSize(70,70).setImages(btn3).updateSize();
   cp5.addButton("floor4").setValue(0).setPosition(400,190).setSize(70,70).setImages(btn4).updateSize();
   cp5.addButton("open").setValue(0).setPosition(400,470).setSize(70,70).setImages(btn5).updateSize();
   cp5.addButton("close").setValue(0).setPosition(400,530).setSize(70,70).setImages(btn6).updateSize();
      
 }
 
 void draw() {
   background(200);
   while (cf!=y)
   {
    
     if(y==1)
     floor1();
     
     if(y==2)
     floor2();
     
     if(y==3)
     floor3();
     
     if(y==4)
     floor4();
        
 }
   
 }
 public void floor1() {
   y=1;
 f=true;
   if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
      f=false;
   }
   if(cf>y && f==true){
    cf=cf-1;
    mySlider.setValue(cf);
     if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   }
    
   }

 }
 
 public void floor2() {
   y=2;
   f=true;
   if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   f=false;
   }
   if(cf>y && f==true){
     cf=cf-1;
     mySlider.setValue(cf);
   }
    if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   }
     if(cf<y && f==true){
     cf=cf+1;
     mySlider.setValue(cf);
       if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   }
   }}
   
    public void floor3() {
   y=3;
   f=true;
   if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   f=false;
   }
   if(cf>y && f==true){
     cf=cf-1;
     mySlider.setValue(cf);
   }
    if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   }
     if(cf<y && f==true){
     cf=cf+1;
     mySlider.setValue(cf);
       if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   }
   }}
   
    public void floor4() {
   y=4;
   f=true;
   if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   f=false;
   }
   if(cf>y && f==true){
     cf=cf-1;
     mySlider.setValue(cf);
   }
     if(cf<y && f==true){
     cf=cf+1;
     mySlider.setValue(cf);
       if(y==cf){
     file=new SoundFile(this,"bell.mp3");
     file.play();
     file.amp(.5);
   }
   }}

     
   
