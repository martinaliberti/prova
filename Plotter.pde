class Plotter{
  
  int width;
  
  int height;
  
  int repetitions;

  PlotterRow[] rows = new PlotterRow[3];

  Plotter(int width, int height, int repetitions){
    
    this.width = width;
    
    this.height = height;
    
    this.repetitions = repetitions;
    
    this.rows[0] = new PlotterRow(this.width, this.height / 3, 0);
    this.rows[1] = new PlotterRow(this.width, this.height / 3, 1);
    this.rows[2] = new PlotterRow(this.width, this.height / 3, 2);
    
  
  }
  
  void draw(){
      push();
      fill(0);
      rect(0,0,this.width, this.height);
      pop();
      
      drawRows();
  }
  
  void drawRows(){

    for(int i = 0; i < this.rows.length; i++){
      
      PlotterRow row = this.rows[i];
      push();
      row.draw();
      pop();
    }
    
  }
  
}
