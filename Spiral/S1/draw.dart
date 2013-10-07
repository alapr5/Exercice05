library ping_pong;

import 'dart:html';
import 'dart:math';

part 'board.dart';

void main() {
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  //initialisation
  var x = 200; // position x du sommet du triangle
  var y = 0; //position y du sommet du triangle
  var h = 50; //hauteur total du plus grand triangle
  board.triangleRec(x, y, h, 0);
}

