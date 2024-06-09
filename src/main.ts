import p5 from "p5";
import { allScenes } from "./constants/allScenes";
import { sceneManager } from "./interfaces/SceneManager";

export const main = (p: p5) => {
  p.AUDIO;

  p.setup = function setup() {
    p.createCanvas(1280, 720);
    sceneManager.loadScene(allScenes[101]());
  };
  p.draw = function draw() {
    updateDeltaTime();
    p.background(255);
    sceneManager.draw();
    window.mouseClickedThisFrame = false;
  };
  p.mousePressed = function mousePressed() {
    const scene = sceneManager.getCurrentScene();
    scene?.mousePressed();
  };
  p.mouseReleased = function mouseReleased() {
    window.mouseClickedThisFrame = true;
    const scene = sceneManager.getCurrentScene();
    if (sceneManager?.getNextScene()) {
      scene?.mouseReleased();
    }
  };
  p.keyPressed = function keyPressed() {
    const scene = sceneManager.getCurrentScene();
    scene?.keyPressed();
  };
};
