public class Enemy extends Entity{
  int lifes = 1;
  public Enemy(float x, float y) {
    this.x = x;
    this.y = y;
    img = loadImage("monster.png");
  }
}
