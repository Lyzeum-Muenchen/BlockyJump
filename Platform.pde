public class Platform extends Entity {
  public Platform(float x, float y) {
    this.x = x;
    this.y = y;
    this.img = loadImage("platform.png");
  }
  public void collide(Player p){
    if(p.getX() -x < 50 && p.getX() -x > -50
        && p.getY() -y < 20 && p.getY() -y > -20
        && p.getVY() < 0 ){
      p.jump();
    }
  }
}
