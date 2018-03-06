class Meteor 
{
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  float life = 255;
  Meteor(float tempX, float tempY, float tempW)
  {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    gravity = 0.1;
  }

  void move() 
  {
    speed = speed + gravity;
    y = y + speed;
    if (y > height) {
      speed = speed * -0.8;
      y = height;
    }
  }

  boolean finished()  
  {
    life--;
    if (life < 0) 
    {
      return true;
    } else 
    {
      return false;
    }
  }

  void display() 
  {
    fill(0, life);
    image(M, x, y, w, w);
  }
}  