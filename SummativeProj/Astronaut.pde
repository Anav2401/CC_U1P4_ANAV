class Astronaut
{

  void Astro()
  {
    PVector Mouse = new PVector (mouseX, mouseY);
    Direction = PVector.sub(Position,Mouse);
    speed = Direction.mag();
    Direction.normalize();
    Position.sub(Direction);
    Direction.mult(speed/5);
    mousePressed();
    {
      Direction.mult(speed/2);
    }
    image(A, Position.x, Position.y);
  }
}