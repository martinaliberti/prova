// import grafica.*;
// import processing.*;

Plotter plotter;



float[][][] data;



void settings(){
  size(
     Params.width,
     Params.height
  );
}


float generateRandomNumber(int initial, int size){

  return noise(initial + size);

}


void setup(){

  data = new float[Params.nRows][Params.fieldSamples][Params.nFields];

  plotter = new Plotter(Params.width, Params.height);


  

  String headers[][] = new String[Params.nRows][Params.nFields + 1];
  

  headers[0][0] = "Motore 1";
  headers[0][1] = "x";
  headers[0][2] = "y";
  headers[0][3] = "z";

  headers[1][0] = "Motore 2";
  headers[1][1] = "x";
  headers[1][2] = "y";
  headers[1][3] = "z";

  headers[2][0] = "Motore 3";
  headers[2][1] = "x";
  headers[2][2] = "y";
  headers[2][3] = "z";

  background(255);

  fill(255, 0, 0);
  plotter.drawHeaders(headers);

  strokeWeight(2);

}




int loop = 0;

void draw(){

  int time = frameCount % Params.fieldSamples;
  if(time == 0) loop++;

  float x1 = generateRandomNumber(time, 1 + loop);
  float y1 = generateRandomNumber(time, 2 + loop);
  float z1 = generateRandomNumber(time, 3 + loop);

  float x2 = generateRandomNumber(time, 12 + loop);
  float y2 = generateRandomNumber(time, 22 + loop);
  float z2 = generateRandomNumber(time, 32 + loop);

  float x3 = generateRandomNumber(time, 123 + loop);
  float y3 = generateRandomNumber(time, 223 + loop);
  float z3 = generateRandomNumber(time, 323 + loop);

  data[0][time][0] = x1;
  data[0][time][1] = y1;
  data[0][time][2] = z1;

  data[1][time][0] = x2;
  data[1][time][1] = y2;
  data[1][time][2] = z2;

  data[2][time][0] = x3;
  data[2][time][1] = y3;
  data[2][time][2] = z3;



  
  plotter.draw(time, data);



}
