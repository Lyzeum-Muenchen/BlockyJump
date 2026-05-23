public class Player extends Entity {
  float vy;
  boolean alive;
  float maxY=height/2;
  
  public Player(float x, float y){
   this.x = x;
   this.y = y;
   this.img = loadImage("player.png");
  }
  
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
  public void moveLeft() {
    x -= 4;
  }
  public void moveRight() {
    x += 4;
  }
  public void jump() {
    vy = 25;
  }
  public void turn() {
    vy -= 1;
    y -= vy;
    
    if(y < maxY){
      maxY = y;
    }
  }
  public void gameOver() {
    alive = false;
  }
  public float getVY(){
    return vy;
  }
  public float getMaxY(){
    return maxY;
  }
}
