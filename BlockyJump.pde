ArrayList<Entity> entityList = new ArrayList<Entity>();
Player player;
void setup(){
  size(400, 1000);
  smooth(0);
  imageMode(CENTER);
  
  player = new Player(200, 900);
  entityList.add(player);
  entityList.add(new Platform(200, 400));
  entityList.add(new Platform(300, 800));
  entityList.add(new Enemy(100, 600));
}

void draw(){
  background(0);
  for (Entity ent : entityList){
    ent.display();
    ent.turn();
  }
}
