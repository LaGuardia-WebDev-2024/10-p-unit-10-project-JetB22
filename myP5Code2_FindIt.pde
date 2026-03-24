var pieceY = 0;
var pieceX = 270;

setup = function() {  
  size(600, 450);
  frameRate(10);
  pickPiece();
  
  background(122, 0, 61);
  

  var shape = [ "Square", "Line", "Rectangle","In Future Update","In Future Update"];

  fill(random(100,255),random(100,255),random(100,255))
  var textY = 125;
  textSize(15);
  for(var shapeNum = 0; shapeNum < shape.length; shapeNum++){
  text(shape[shapeNum], 30, textY);
  textY += 50
}
  
};

draw = function() {

  // Draw grid ==========================================

  var gridX = 150;
  var gridY = 50;
  fill(50,50,50);
  rect(150,50,300,350,5);
  stroke(random(100,255), random(100,255), random(100,255));

  while (gridX < 470) {
    line(gridX, gridY, gridX, gridY+350);
    gridX += 30;
  }

  for (var i = 50; i < 435; i += 35) {
    line(150, i, 450, i);
  }

  // Draw grid ==========================================

  stroke(0);

  // Draw the piece======================================


  if (pieceType === 0) {
    drawSquareShape();
    pieceY += 5;
    if (pieceY + 70 >= 400) {
      pickPiece();
    }
  } 

  if (pieceType === 1) {
    drawLineShape();
    pieceY += 5;
    if (pieceY + 70 >= 330) {
      pickPiece();
    }
  } 

  if (pieceType === 2) {
    drawRectShape();
    pieceY += 5;
    if (pieceY + 70 >= 365) {
      pickPiece();
    }
  } 

};

function keyPressed(){
    if (key == 'a') pieceX - 30
  }

// Draw the piece======================================

var pickPiece = function() {
  pieceY = 50;
  pieceType = floor(random(0,3));
  pieceX = 270;
};

// Shapes==============================================

var drawSquareShape = function(){
  

  fill(250,250,10);
  rect(pieceX, pieceY, 60, 70);
};

var drawLineShape = function(){
  fill(50,180,255);
  rect(pieceX, pieceY, 30, 140);
};

var drawRectShape = function(){
  fill(50,255,180);
  rect(pieceX, pieceY, 60, 110);
};

// Shapes==============================================

