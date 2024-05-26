public class Scene_210 extends BaseScene {
  @Override
  public int getNextScene() { return 211; }
  public void setup() {
    println("Scene_210 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_210 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
