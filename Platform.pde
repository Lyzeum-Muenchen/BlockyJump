public class Platform extends Entity {
  public Platform(float x, float y) {
    this.x = x;
    this.y = y;
    this.img = loadImage("platform.png");
  }
  void collide(Player p){
    if(p.getX() > x-70 && p.getX() < x+70 // spieler zwischen rechter und linker Seite
      && p.getY()+40 > y-20 && p.getY() < y+20 // spieler berührt plattform in Y-Richtung 
      && p.getVY() < 0
    ){
      p.jump();
    }
  }
}
