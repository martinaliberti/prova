import grafica.*;

Plotter plotter;

void settings(){
  size(
     Params.width,
     Params.height
  );
}

void setup(){
  plotter = new Plotter(Params.width, Params.height, 3);
}

void draw(){
  
  plotter.draw();

}
