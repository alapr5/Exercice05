part of draw;

class Board {
  CanvasRenderingContext2D context;

  Board(CanvasElement canvas) {
    context = canvas.getContext("2d");
  }

  //draw a triangle
  void triangle(x, y, h) {
    context.beginPath();
    context.fillStyle = 'black';
    context.moveTo(x, y); // Sommet
    context.lineTo(x + h/2, y+h); // droit
    context.lineTo(x - h/2, y+h); // base
    context.lineTo(x, y); // gauche
    context.closePath();
    context.fill();
  }
  
  void triangleRec(x, y, h, i){
    triangle(x, y, h);
    if (i < 10){
      var x1 = x - h/2;
      var x2 = x + h/2;
      y = y+h;
      i++;
      triangleRec(x1, y, h, i);
      triangleRec(x2, y, h, i);
    }
  }
}