library ping_pong;

import 'dart:html';
import 'dart:math';

part 'board.dart';

void main() {
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  //initialisation

  var x = 200; // position x du sommet du triangle noir
  var y = 0; // position y du sommet du triangle noir
  var h = 400; // hauteur du triangle noir
  board.triangleup(x,y,h,"black");
  
  var it = 2;
  //Triangle blanc haut
  var x1 = x - (h/(2*pow(2,it)));
  var y1 = h/pow(2,it);
  var x2 = x + (h/(2*pow(2,it)));
  var y2 = h/pow(2,it);
  var x3 = x;
  var y3 = h/pow(2,(it-1));
  board.triangledown(x1,y1,x2,y2,x3,y3, "white");
  //Triangle blanc haut
  x1 = h / (pow(2,it)+1);
  y1 = 3*h/pow(2,it);
  x2 = 2*h / (pow(2,it)+1);
  y2 = 3*h/pow(2,it);
  x3 = x/it;
  y3 = 2*h/pow(2,(it-1));
  board.triangledown(x1,y1,x2,y2,x3,y3, "red");
  
}
