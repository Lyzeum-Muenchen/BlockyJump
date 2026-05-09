public class Enemy extends Entity{
  int lifes = 1;
  public Enemy(float x, float y) {
    this.x = x;
    this.y = y;
    img = loadImage("monster.png");
  }
  void checkCollision(Player p){
    if(p.getX() - x >= -20 && p.getX() - x <= 20 
      && p.getY() -y <= 20 && p.getY() -y >= -20){
        p.jump();
    }
  }
}
