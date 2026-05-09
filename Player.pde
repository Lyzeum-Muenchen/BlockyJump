public class Player extends Entity{
  float vy;
  
  Player(){
    x=width/2;
    y=height;
    vy = 25;
    img = loadImage("monster.png");
  }
  
  void turn(){
    y -= vy;
    vy -= 0.5;
  }
  
  void jump(){
    vy = 20;
  }
  void moveLeft(){
    x -= 2;
  }
  void moveRight(){
    x += 2;
  }
  float getVY(){
    return vy;
  }
}
