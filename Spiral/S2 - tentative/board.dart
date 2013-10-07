part of draw;

class Board {
  CanvasRenderingContext2D context;

  Board(CanvasElement canvas) {
    context = canvas.getContext("2d");
  }

  //draw a triangle
  void triangleup(x, y, h, fill) {
    context.beginPath();
    context.fillStyle = fill;
    context.moveTo(x, y); // Sommet
    context.lineTo(x + h/2, y+h); // droit
    context.lineTo(x - h/2, y+h); // base
    context.lineTo(x, y); // gauche
    context.closePath();
    context.fill();
  }
  
  void triangledown(x1,y1,x2,y2,x3,y3, fill) {
    context.beginPath();
    context.fillStyle = fill;
    context.moveTo(x1, y1);
    context.lineTo(x2, y2);
    context.lineTo(x3, y3);
    context.lineTo(x1, y1);
    context.closePath();
    context.fill();
  }
  
  void triangleRec(x, y, h, i, white){
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