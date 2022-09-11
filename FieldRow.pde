public class FieldRow{

  int nSamples = Params.fieldSamples;
  int thick = 0;
  float[] values = new float[this.nSamples];
  
  int width;
  int height;
  int offset;
  
  FieldRow(int width,int height, int offset){
    this.width = width;
    this.height = height;
    this.offset = offset;
  }
  
  
  void drawField(){

    strokeWeight(10);
  

    for(int i = 0; i < this.values.length; i++){
      float y = sin(i) * 10 + this.height / 2;
      float x = map(i, 0, this.nSamples, 0, this.width);
      
      point(x, y);
    }
    
    this.thick += 1;
  }
  
}
