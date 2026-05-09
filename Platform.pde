public class Platform extends Entity {
  public Platform(float x, float y) {
    this.x = x;
    this.y = y;
    this.img = loadImage("platform.png");
  }
  
  void checkCollision(Player p){
    if(p.getX() - x >= -55 && p.getX() - x <= 55 
      && p.getY() -y <= 20 && p.getY() - y >= -20){
        p.jump();
    }
  }
}
