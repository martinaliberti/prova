class Plotter{
  
  int width;
  
  int height;
  
  Plotter(int width, int height){
    
    this.width = width;
    
    this.height = height;
  
  }
  
  void draw(int time, float[][][] data){

    float rowHeight = height / data.length;
    
    for(int i = 0; i < data.length; i++){
      
      float[][] row = data[i];
      
      float[] pointData = row[time];
      
      float cellSize = rowHeight / pointData.length;
      
      for(int j = 0; j < pointData.length; j++){
        
        float position = pointData[j];
        
        float y = map(position, 0, 1, 0, cellSize);
      
        point(time, y + cellSize * j + rowHeight * i);
        
      }
      
    }

  }

  
  void drawHeaders(String [][] headers){

    float rowHeight = height/ headers.length;
  
    for(int i = 0; i < headers.length; i++){
      
      String[] row = headers[i];
      
      line(0, rowHeight * i, width ,rowHeight * i);
      
      float cellSize = rowHeight / row.length;
    
      for(int j = 0; j < row.length; j++){
  
        String t = row[j];
        int x = Params.textMarginLeft;
    
        if(j==0){
          
          float y = rowHeight * i + (rowHeight - 10);
          
          text(t, x, y);
    
        } else {
    
          float y = rowHeight * i + cellSize * j;
          text(t, x, y);
    
        }
      
      }

    }
  }
  
  
}
