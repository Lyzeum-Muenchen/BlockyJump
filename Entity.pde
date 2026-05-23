public class Entity {
  float x;
  float y;
  PImage img;
  
  void turn(){} 
  void display(){
    image(img, x, y, 128, 128);
  }
  void collide(Player p){
    
  }
}
