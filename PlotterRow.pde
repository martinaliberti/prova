public class PlotterRow{
  
  int width;
  int height;
  
  int instance;
  int offset;
  
  FieldRow[] fields = new FieldRow[1];
  
  PlotterRow(int width, int height, int instance){
    
    this.width = width;
    this.height = height;
    
    this.instance = instance;
    
    this.offset = instance * this.height;
    
    this.fields[0] = new FieldRow(this.width, this.height, this.offset);
    
  }
  
  void draw(){
    
    push();
    
    fill(255 / (this.instance + 1));
    
    rect(0, this.offset, this.width, this.height);
    
    for(int i = 0; i < this.fields.length; i++){
      
      FieldRow field = this.fields[i];
      field.drawField();
    
    }
    
    pop();

  }
  
  
}
