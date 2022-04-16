//Bugiolachi, Jose.
//TP0 Dibujo básico y GitHub


void setup(){
  size(400, 400);
  
}

void draw(){
  background(2,43,61);

  //fuego
  fill(255, 75,0);
  triangle(170, 270, 230, 270, width/2, 340);
  triangle(160, 270, width/2, 270, 150, 330);
  triangle(width/2, 270, 240, 270, 250, 330);
  
  
  //techo
  fill(255, 0, 0);
  triangle(160,90, width/2,40, 240,90);
  
  //cuerpo del cohete
  fill(210);
  quad (160,90, 240,90, 240,270, 160,270);
  
  //3 aletas inferiores
  fill(255,0,0);
  triangle(110, 290, 160, 200, 160,270);
  triangle(240,270, 240, 200, 290, 290 );
  triangle(180, 220, 220, 220, width/2, 310);
  
  
  //ventanas
  fill(6, 134,189);
  circle(width/2, 130, 40);
  circle(width/2, 180, 40);
  
  strokeWeight(2);
}
