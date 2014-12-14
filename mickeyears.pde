import controlP5.*;
import processing.video.*;
import gab.opencv.*;
import java.awt.Rectangle;
import ddf.minim.*;
import org.seltar.Bytes2Web.*;

//new cp5
ControlP5 cp5;

//picture sound
Minim minim;
AudioPlayer picture;

//embroidery color starts as black
color tempColor = color(0);

//button locations
int col = 775;
int col2 = 25;
int buttonW = 100;
int buttonH = 75;
int fontButton = 300;

//original state variables
int state = 1;
int hatState = 1;

//user input storage
String temp;
String embroidery;
String textValue = "";

//images
PImage test;
PImage mickey;
PImage third;

//hat fronts
PImage hat1;
PImage hat2;
PImage hat3;
PImage hat4;
PImage hat5;
PImage hat6;
PImage hat7;
PImage hat8;
PImage hat9;

//hat backs
PImage hat1back;
PImage hat2back;
PImage hat3back;
PImage hat4back;
PImage hat5back;
PImage hat6back;
PImage hat7back;
PImage hat8back;
PImage hat9back;

//current hats
PImage hatBack;
PImage hat;

//state backgrounds
PImage state3;
PImage emb;

//fonts
PFont emFont;
PFont font1;
PFont font2;
PFont font3;
PFont font4;
PFont font;

//time variables for saving
int d = day();    
int month = month();  
int y = year();
int s;
int m;
int h;

//key right
boolean keyright = false;

// main open CV object (contains a ton of computer vision methods)
OpenCV opencv;

// array to hold all of the positions of the found faces
Rectangle[] hats = {
};

Capture video;

// video scaling factor
int scalingFactor = 2;


void setup()
{
  //set canvas
  size(900, 600);
  background(255);
  

  //load fonts
  font1 = createFont("arial", 60);
  font2 = loadFont("halo2.vlw");
  font3 = loadFont("gro.vlw");
  font4 = loadFont("little.vlw");
  font = font1;
  emFont = font1;
  
  //sound
  minim = new Minim(this);
  picture = minim.loadFile("picture.wav");
  
  //Control P5
  cp5 = new ControlP5(this);

  cp5.addTextfield("Embroidery Text")
    .setPosition(410, 210)
    .setSize(250, 50)
    .setFont(font)
    .setFocus(true)
    .setAutoClear(true)
    .setColor(color(255))
    .setColorBackground(100);
                ;
  textFont(font);


  //Face Detection
  // grab an array of our cameras
  String[] cameras = Capture.list();

  // no camera objects - no need to continue!  
  if (cameras.length == 0) 
  {
    println("There are no cameras available for capture.");
    exit();
  } 
  else 
  {
    // create a video object
    // note - bring this in at a low resolution so that you
    // don't make things chug too much!
    video = new Capture(this, 320, 240);
    video.start();

    // create our open CV object and tell it to monitor the video stream
    opencv = new OpenCV(this, video);

    // tell open CV to begin looking for faces
    opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

    // load in our PImages
    hat1 = loadImage("hat1.png");
    hat2 = loadImage("hat2.png");
    hat3 = loadImage("hat3.png");
    hat4 = loadImage("hat4.png");
    hat5 = loadImage("hat5.png");
    hat6 = loadImage("hat6.png");
    hat7 = loadImage("hat7.png");
    hat8 = loadImage("hat8.png");
    hat9 = loadImage("hat9.png");
    hat1back = loadImage("hat1back.png");
    hat2back = loadImage("hat2back.png");
    hat3back = loadImage("hat3back.png");
    hat4back = loadImage("hat4back.png");
    hat5back = loadImage("hat5back.png");
    hat6back = loadImage("hat6back.png");
    hat7back = loadImage("hat7back.png");
    hat8back = loadImage("hat8back.png");
    hat9back = loadImage("hat9back.png");
    state3 = loadImage("state3.png");
    third = loadImage("3.png");
    emb = loadImage("emb.png");
    mickey = loadImage("mickey.png");
  }
}


void draw()
{
  

  
  //display mirror
  displayMirror();

  if (state == 1)
  {
    stateOne();
    savePic();
    displaySave();
  }

  else if (state == 2)
  {
    stateTwo();
    savePic();
    displaySave();
  }

  else if (state == 3)
  {
    savePic();
    stateThree();
    displaySave();
  }
}

  boolean sketchFullScreen() 
  {
  return false;
  }


