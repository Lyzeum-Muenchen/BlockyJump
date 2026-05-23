public class Enemy extends Entity{
  int lives = 1;
  int cycles = 0;
  public Enemy(float x, float y) {
    this.x = x;
    this.y = y;
    img = loadImage("monster.png");
  }
  public void turn(){
    cycles ++;
    if (cycles % 16 < 8){
      y += 1;
    }
    else{
      y -= 1;
    }
  }
  public void collide(Player p){
    float dx = p.getX() - x;
    float dy = p.getY() - y;
    float d = sqrt(dx*dx + dy*dy);
    if (d < 70){
      p.gameOver();
    }
  }
  
}
