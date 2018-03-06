import processing.sound.*;
SoundFile file;
String audioName = "Hardwell_-_Spaceman_Original_Mix[Mp3Converter.net].mp3";
PImage M;
PImage A;
ArrayList<Meteor> mets;
int ballWidth = 48;
PVector Position = new PVector(0, 0);
PVector Direction = new PVector (0, 0);
PVector Mouse = new PVector (0, 0);
Astronaut a = new Astronaut();
float speed = 5;
void setup() 
{
  file = new SoundFile(this, audioName);
  file.play();
  size(2000, 2000);
  mets = new ArrayList<Meteor>();
  imageMode(CENTER);
  M = loadImage("Met.png");
  A = loadImage("Ast.png");
  A.resize( 100, 100);
  mets.add(new Meteor(width/2, 0, ballWidth));
}

void draw() 
{ 
  background(random(255),random(255),random(255));
  for (int i = mets.size()-1; i >= 0; i--) { 
    Meteor ball = mets.get(i);
    ball.move();
    ball.display();
    if (ball.finished())
    {
      mets.remove(i);
    }
  }
  mets.add(new Meteor(random(2000), 0, ballWidth));
  a.Astro();
}