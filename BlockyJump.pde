ArrayList<Entity> entityList = new ArrayList<Entity>();

void setup(){
  size(400, 1000);
  smooth(0);
  imageMode(CENTER);
  entityList.add(new Platform(200, 400));
  entityList.add(new Platform(300, 800));
  entityList.add(new Enemy(100, 600));
}

void draw(){
  for (Entity ent : entityList){
    ent.display();
    ent.turn();
  }
}
