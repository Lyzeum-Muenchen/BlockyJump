public class Entity {
  float x;
  float y;
  PImage img;
  
  void turn(){} 
  void checkCollision(Player p){}
  void display(){
    image(img, x, y, 128, 128);
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
}
