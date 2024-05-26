public class Scene_214 extends BaseScene {
  @Override
  public int getNextScene() { return 215; }
  public void setup() {
    println("Scene_214 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_214 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
