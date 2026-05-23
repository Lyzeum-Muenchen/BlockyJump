public class Player extends Entity {
  float vy;
  boolean alive = true;
  
  public Player(float x, float y) {
    this.x = x;
    this.y = y;
    this.img = loadImage("player.png");
  }

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public void moveLeft() {
    x -= 4;
  }
  public void moveRight() {
    x += 4;
  }
  public void jump() {
    vy = 20;
  }
  public void turn() {
    vy -= 1;
    y -= vy;
  }
  public void gameOver() {
    alive = false;
  }
  public float getVY(){
    return vy;
  }
