public class Scene_219 extends BaseScene {
  @Override
  public int getNextScene() { return 220; }
  public void setup() {
    println("Scene_219 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_219 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
