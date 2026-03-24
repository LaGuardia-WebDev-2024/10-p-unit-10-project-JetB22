



setup = function() {
  size(600, 450); 

  background(122, 0, 61);

  frameRate(5);

  var gridX = 150;
  var gridY = 50;
 
  fill(50,50,50);
  rect(150,50,300,350,5);
  
  stroke(random(100,255),random(100,255),random(100,255));

  while (gridX < 470) {
  line(gridX, gridY, gridX, gridY+350);  
  gridX += 30;

  for (var i = 50 ; i < 435 ; i += 35) {
      line(150, i, 450, i);
  }
}


}

draw = function(){
 

}

var drawSquareShape = function(){

};


