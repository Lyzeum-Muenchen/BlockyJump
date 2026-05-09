import java.util.HashSet;

ArrayList<Entity> entityList = new ArrayList<Entity>();
HashSet<Character> pressedKeys = new HashSet<Character>();

Player p;

boolean gameOver = false;

void setup(){
  size(400, 1000);
  smooth(0);
  imageMode(CENTER);
  p = new Player();
  entityList.add(new Platform(200, 400));
  entityList.add(new Platform(300, 800));
  entityList.add(new Enemy(100, 600));
}

void draw(){
  background(0);
  for (Entity ent : entityList){
    ent.display();
    ent.turn();
    ent.checkCollision(p);
  }
  p.turn();
  p.display();
  handleInput();
}

void keyPressed(){
  pressedKeys.add(key);
}
void keyReleased(){
  pressedKeys.remove(key);
}

void handleInput(){
  if(pressedKeys.contains('a')) {p.moveLeft();}
  if(pressedKeys.contains('d')) {p.moveRight();}
}
