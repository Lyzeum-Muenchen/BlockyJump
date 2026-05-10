public class Player extends Entity {
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
}
