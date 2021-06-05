/*
AUTHOR  : NABIILAH NUUR AINII
NIM     : 18523252
TOPIK   : 2 - Lingkungan Udara
TEMA    : Air Condition during Corona Pandemic
*/

import processing.sound.*;
SoundFile file;
PFont f;
int time=1;

void setup(){
  background(0);
  size(600,400);
  frameRate(7);
  file = new SoundFile(this, "airsound1.wav");
  file.play();
}

int awan1 = 460;
int awan2 = 350;
int awan3 = 280;
int awan4 = 170;
int awan5 = 140;
int mobil1 = 25;
int mobil2 = 125;
int mobil3 = 225;
int mobil4 = 325;
float p=0;

void draw(){
  if(time>0 && time<=15){
    scene0();
  }
  if(time>15 && time<=27){
    scene1();
  }
  if(time>27 && time<=89){
    scene2();
  }
  if(time>89 && time<=101){
    scene3();
  }
  if(time>101 && time<= 131){
    scene4();
  }
  if(time>131 && time<=143){
    scene5();
  }
  if(time>143 && time<=173){
    scene6();
  }
  if(time>173 && time<=255){
    scene7();
  }
  time++;
}

void scene0(){
  //------------CREDIT-------------
  f = createFont("PTSerif-Bold", 12);
  background(0);
  textFont(f, 15);
  fill(255);
  text("Created by:", 240, 175);
  text("Nabiilah Nuur Ainii", 205, height/2);
  text("18523252", 245, 220);
}


void scene1(){
  //------------LOADING------------
  background(255);
  fill(0);
  text("tunggu sebentar, loading. . .", 205, 300);
  translate(width/2, height/2);
  rotate(p);
  noStroke();
  fill(random(220), random(200), random(210));
  rotate(radians(15));
  rect(0,0, 50,5, 10);
  p=p-0.5;
  
}


void scene2(){
  //----------INTRO------------
  if(time%2==1){
    background(255);
    //bird-body
    fill(0,102,204);
    noStroke();
    ellipse(width/2, 250, 95, 110);
    //bird-eye
    fill(0);
    ellipse(280, 240, 7,10);
    ellipse(320, 240, 7,10);
    //bird-parrot
    fill(255,165,0);
    triangle(295,255,305,255,300,265);
    //bird-wings
    fill(0,51,102);
    arc(345, 270, 40, 40, 0, QUARTER_PI+PI, CHORD);
    arc(255, 270, 40, 40, 7*PI/4, 2*PI+1/2*PI);
    arc(255, 270, 40, 40, 0, 3*PI/4);
    //bird-leg
    stroke(1);
    line(290,304,290,325);
    line(290,325,285,325);
    line(310,304,310,325);
    line(310,325,315,325);
  }
  else{
    background(255);
    //bird-body
    fill(0,102,204);
    noStroke();
    ellipse(width/2, 250, 95, 110);
    //bird-eye
    fill(0);
    ellipse(280, 240, 7,10);
    ellipse(320, 240, 7,10);
    //bird-parrot
    fill(255,165,0);
    triangle(295,255,305,255,300,248);
    triangle(295, 255, 305, 255, 300,265);
    fill(178,34,34);
    triangle(297, 255, 303, 255, 300, 260);
    //bird-wings
    fill(0,51,102);
    arc(345, 260, 40, 50, 0,PI, CHORD);
    arc(255, 270, 40, 40, 7*PI/4, 2*PI+1/2*PI);
    arc(255, 270, 40, 40, 0, 3*PI/4);
    //bird-leg
    stroke(1);
    line(290,304,290,325);
    line(290,325,285,325);
    line(310,304,310,325);
    line(310,325,315,325);
  }
  
  //bubble chat
  f = createFont("PTSerif-Bold", 12);
  textFont(f);
  fill(220);
  noStroke();
  
  if(time>27 && time<= 39){
    ellipse(width/2,95, 100, 30);
    fill(0);
    text("kalian tau?", 270, 100);
  }
  
  if (time > 39 && time<= 74){
    ellipse(width/2,95, 100, 30);
    fill(0);
    text("kalian tau?", 270, 100);
    fill(220);
    ellipse(460, 150, 200, 100);
    fill(0);
    text("menyenangkan memang", 385, 130);
    text("telah masuk masa new normal,", 375, 145);
    text("TAPI ada satu hal buruk yang", 375, 160);
    text("terjadi kembali seperti", 395, 175);
    text("sebelum PSBB,", 420, 190);
  }
  
  if(time> 74 && time<=89){
    ellipse(width/2,95, 100, 30);
    fill(0);
    text("kalian tau?", 270, 100);
    fill(220);
    ellipse(460, 150, 200, 100);
    fill(0);
    text("menyenangkan memang", 385, 130);
    text("telah masuk masa new normal,", 375, 145);
    text("TAPI ada satu hal buruk yang", 375, 160);
    text("terjadi kembali seperti", 395, 175);
    text("sebelum PSBB,", 420, 190);
    scale(1.5);
    fill(220);
    ellipse(90, 150, 100, 30);
    textFont(f, 9);
    fill(0);
    text("let me show you", 55, 153);
  }
}


void scene3(){
  //-----------TRANSISI PSBB----------------
  background(154,205,50);
  textFont(f, 20);
  fill(255);
  text("Saat Masa PSBB", 220, height/2);
}


void scene4(){
  //--------------KOTA BERSIH-------------
  background(153,204,255);
  ellipseMode(CENTER);
  noStroke();
  //gedung kuning
  fill(240,230,140);
  //fill(70,130,180);
  rect(50, 180, 90, 400, 5);
  //gedung coklat
  fill(210,180,140);
  rect(140, 130, 70, 305, 7);
  triangle(170, 130, 180,130, 175, 90);
  //gedung putih
  fill(255,245,238);
  rect(210, 230, 110, 300);
  rect(225, 210, 80, 20);
  //gedung oren
  fill(244,164,96);
  rect(380, 160, 80, 300, 6);
  //gedung pink
  fill(240,128,128);
  rect(320, 190, 90, 300);
  //gedung ungu
  fill(221,160,221);
  rect(460, 320, 100, 200);
  rect(468, 140, 80, 400);
  rect(478, 105, 60, 100);
  strokeWeight(3);
  stroke(221,160,221);
  line(508, 105, 508, 75);
  
  //RANTING
  noStroke();
  fill(160,82,45);
  quad(600,240,600, 270, 530, 260, 520, 230);
  quad(522, 230, 532, 260, 450, 250, 440, 230);
  quad(441, 230, 451, 250, 410, 235, 400, 215);
  quad(406, 225, 411, 235, 380, 235, 380, 225);
  triangle(380, 235, 380, 225, 360, 210);
  triangle(550, 235, 570, 237, 530, 220);
  triangle(510, 250, 520, 257, 480, 270);
  
  //FLYING BIRD
  fill(0,102,204);
  noStroke();
  ellipse(375, height/2, 30, 35);
  arc(390, 192, 25, 25, 7*PI/4, 2*PI+1/2*PI);
  arc(390, 192, 25, 25, 0, 3*PI/4);
  quad(375, 223, 395, 218, 400, 210, 370, 215);
  fill(255,165,0);
  triangle(360,205, 360, 195, 350, 200);
  stroke(1);
  strokeWeight(2);
  line(375,218, 385, 225);
  line(383,215, 393, 222);
  strokeWeight(2);
  noFill();
  arc(370, 195, 5,5, PI, PI+PI);
  
  //STAND BIRD
  //bird-body
  fill(0,102,204);
  noStroke();
  ellipse(490, 185, 50, 65);
  //bird-eye
  strokeWeight(2);
  noFill();
  stroke(0);
  arc(477, 180, 8,8, PI, PI+PI);
  arc(503, 180, 8,8, PI, PI+PI);
  noStroke();
  //bird-parrot
  fill(255,165,0);
  triangle(485,190,495,190,490,197);
  //bird-wings
  fill(0,51,102);
  arc(518, 197, 25, 25, 0, QUARTER_PI+PI, CHORD);
  arc(463, 197, 25, 25, 7*PI/4, 2*PI+1/2*PI);
  arc(463, 197, 25, 25, 0, 3*PI/4);
  //bird-leg
  strokeWeight(2);
  stroke(1);
  line(480, 214, 480, 230);
  line(480, 230, 475, 230);
  line(500, 214, 500, 230);
  line(500, 230, 505, 230);
  
  //jalan
  noStroke();
  fill(105);
  rect(0,340,600,100);
  fill(255);
  rect(20, 367, 20, 3 );
  rect(60, 367, 20, 3 );
  rect(100, 367, 20, 3 );
  rect(140, 367, 20, 3 );
  rect(180, 367, 20, 3 );
  rect(220, 367, 20, 3 );
  rect(260, 367, 20, 3 );
  rect(300, 367, 20, 3 );
  rect(340, 367, 20, 3 );
  rect(380, 367, 20, 3 );
  rect(420, 367, 20, 3 );
  rect(460, 367, 20, 3 );
  rect(500, 367, 20, 3 );
  rect(540, 367, 20, 3 );
  rect(580, 367, 20, 3 );
  
  //Daun
  fill(34,139,34);
  bezier(550, 229, 570, 235, 578, 205, 580, 200);
  bezier(550, 229, 530, 235, 538, 205, 580, 200);
  bezier(520, 255, 547, 257, 530, 280, 535, 285);
  bezier(520, 255, 517, 257, 500, 280, 535, 285);
  bezier(430, 229, 445, 235, 445, 205, 440, 200);
  bezier(430, 229, 420, 230, 423, 205, 440, 200);
   
  fill(255);
  //awan1
  stroke(255);
  rect(awan1, 80, 70, 1);
  circle(awan1+70, 70, 20);
  translate(-70, 0);
  circle(awan1+70, 70, 20);
  circle(awan1+85, 60, 15);
  translate(40,0);
  circle(awan1+85, 60, 15);
  circle(awan1+65, 55, 35);
  rect(awan1+40, 65, 50, 15);
  //awan2
  stroke(255);
  rect(awan2, 130, 70, 1);
  circle(awan2+70, 120, 20);
  translate(-70, 0);
  circle(awan2+70, 120, 20);
  circle(awan2+85,110, 15);
  translate(40,0);
  circle(awan2+85, 110, 15);
  circle(awan2+65, 105, 35);
  rect(awan2+40,115, 50, 15);
  //awan3
  stroke(255);
  rect(awan3, 50, 70, 1);
  circle(awan3+70, 40, 20);
  translate(-70, 0);
  circle(awan3+70, 40, 20);
  circle(awan3+85,30, 15);
  translate(40,0);
  circle(awan3+85, 30, 15);
  circle(awan3+65, 25, 35);
  rect(awan3+40,35, 50, 15);
  //awan4
  stroke(255);
  rect(awan4, 160, 70, 1);
  circle(awan4+70, 150, 20);
  translate(-70, 0);
  circle(awan4+70, 150, 20);
  circle(awan4+85, 140, 15);
  translate(40,0);
  circle(awan4+85, 140, 15);
  circle(awan4+65, 135, 35);
  rect(awan4+40,145, 50, 15);
  //awan5
  stroke(255);
  rect(awan5, 80, 70, 1);
  circle(awan5+70, 70, 20);
  translate(-70, 0);
  circle(awan5+70, 70, 20);
  circle(awan5+85, 60, 15);
  translate(40,0);
  circle(awan5+85, 60, 15);
  circle(awan5+65, 55, 35);
  rect(awan5+40,65, 50, 15);
  awan1 += -5;
  awan2 += -5;
  awan3 += -5;
  awan4 += -5;
  awan5 += -5;
  
  if(awan5<125){
    awan5=725;
  }
  if(awan4<100){
    awan4=700;
  }
  if(awan3<70){
    awan3=670;
  }
  if(awan2<40){
    awan2=640;
  }
  if(awan1<15){
    awan1=615;
  }
  ellipseMode(CORNER);
  //Bunga
  translate(665, 255);
  rotate(p);
  noStroke();
  fill(255,215,0);
  ellipse(0,0, 20,5);
  rotate(radians(45));
  ellipse(0,0, 20,5);
  rotate(radians(45));
  ellipse(0,0, 20,5);
  rotate(radians(45));
  ellipse(0,0, 20,5);
  rotate(radians(45));
  ellipse(0,0, 20,5);
  rotate(radians(45));
  ellipse(0,0, 20,5);
  rotate(radians(45));
  ellipse(0,0, 20,5);
  rotate(radians(45));
  ellipse(0,0, 20,5);
  ellipseMode(CENTER);
}


void scene5(){
  //-----------TRANSISI NEW NORMAL--------------
  background(255,99,71);
  textFont(f, 20);
  fill(255);
  text("Saat Masuk New Normal", 190, height/2);
}


void scene6(){
  //--------------KOTA KOTOR-------------------
  background(176,196,222);
  noStroke();
  //gedung kuning
  fill(240,230,140);
  //fill(70,130,180);
  rect(50, 180, 90, 400, 5);
  //gedung coklat
  fill(210,180,140);
  rect(140, 130, 70, 305, 7);
  triangle(170, 130, 180,130, 175, 90);
  //gedung putih
  fill(255,245,238);
  rect(210, 230, 110, 300);
  rect(225, 210, 80, 20);
  //gedung oren
  fill(244,164,96);
  rect(380, 160, 80, 300, 6);
  //gedung pink
  fill(240,128,128);
  rect(320, 190, 90, 300);
  //gedung ungu
  fill(221,160,221);
  rect(460, 320, 100, 200);
  rect(468, 140, 80, 400);
  rect(478, 105, 60, 100);
  strokeWeight(3);
  stroke(221,160,221);
  line(508, 105, 508, 75);
  
  //RANTING
  noStroke();
  fill(160,82,45);
  quad(600,240,600, 270, 530, 260, 520, 230);
  quad(522, 230, 532, 260, 450, 250, 440, 230);
  quad(441, 230, 451, 250, 410, 235, 400, 215);
  quad(406, 225, 411, 235, 380, 235, 380, 225);
  triangle(380, 235, 380, 225, 360, 210);
  triangle(550, 235, 570, 237, 530, 220);
  triangle(510, 250, 520, 257, 480, 270);
  
  //FLYING BIRD
  fill(0,102,204);
  noStroke();
  ellipse(375, height/2, 30, 35);
  arc(390, 192, 25, 25, 7*PI/4, 2*PI+1/2*PI);
  arc(390, 192, 25, 25, 0, 3*PI/4);
  quad(375, 223, 395, 218, 400, 210, 370, 215);
  fill(255,165,0);
  triangle(360,205, 360, 195, 350, 200);
  stroke(1);
  strokeWeight(2);
  line(375,218, 385, 225);
  line(383,215, 393, 222);
  strokeWeight(2);
  noStroke();
  fill(255);
  ellipse(370, 195, 8,10);
  fill(0);
  circle(370, 195, 3);
  
  //STAND BIRD
  //bird-body
  fill(0,102,204);
  noStroke();
  ellipse(490, 185, 50, 65);
  //bird-eye
  strokeWeight(2);
  noFill();
  stroke(0);
  line(478, 180, 485,180);
  line(485, 180, 478, 175);
  line(496, 180, 503, 180 );
  line(496, 180, 503, 175);
  noStroke();
  //bird-mask
  fill(255);
  rect(478, 185, 25, 15);
  strokeWeight(1);
  stroke(255);
  line(478, 185, 465, 180);
  line(503, 185, 514, 180);
  line(478, 200, 465, 205);
  line(503, 200, 514, 205);
  noStroke();
  //bird-wings
  fill(0,51,102);
  arc(518, 197, 25, 25, 0, QUARTER_PI+PI, CHORD);
  arc(463, 197, 25, 25, 7*PI/4, 2*PI+1/2*PI);
  arc(463, 197, 25, 25, 0, 3*PI/4);
  //bird-leg
  strokeWeight(2);
  stroke(1);
  line(480, 214, 480, 230);
  line(480, 230, 475, 230);
  line(500, 214, 500, 230);
  line(500, 230, 505, 230);
  
  //jalan
  noStroke();
  fill(105);
  rect(0,340,600,100);
  fill(255);
  rect(20, 367, 20, 3 );
  rect(60, 367, 20, 3 );
  rect(100, 367, 20, 3 );
  rect(140, 367, 20, 3 );
  rect(180, 367, 20, 3 );
  rect(220, 367, 20, 3 );
  rect(260, 367, 20, 3 );
  rect(300, 367, 20, 3 );
  rect(340, 367, 20, 3 );
  rect(380, 367, 20, 3 );
  rect(420, 367, 20, 3 );
  rect(460, 367, 20, 3 );
  rect(500, 367, 20, 3 );
  rect(540, 367, 20, 3 );
  rect(580, 367, 20, 3 );
  
  //Daun
  fill(143,188,143);
  bezier(550, 229, 570, 235, 578, 205, 580, 200);
  bezier(550, 229, 530, 235, 538, 205, 580, 200);
  bezier(520, 255, 547, 257, 530, 280, 535, 285);
  bezier(520, 255, 517, 257, 500, 280, 535, 285);
  bezier(430, 229, 445, 235, 445, 205, 440, 200);
  bezier(430, 229, 420, 230, 423, 205, 440, 200);
  
  //mobil 1
  fill(255,0,0);
  rect(mobil1, 335,75,19, 4);
  triangle(mobil1, 335, mobil1+30, 335, mobil1+30, 315);
  rect(mobil1+30,315, 35, 20);
  triangle(mobil1+65, 315, mobil1+65, 335, mobil1+75, 335);
  fill(255);
  triangle(mobil1+5, 335, mobil1+30, 335, mobil1+30, 320);
  rect(mobil1+35, 320, 28, 15);
  fill(0);
  circle(mobil1+20, 350, 20);
  translate(43,0);
  circle(mobil1+15, 350, 20);
  fill(245,245,245,100);
  ellipse(mobil1+45, 345, 20, 20);
  ellipse(mobil1+55, 350, 20, 20);
  ellipse(mobil1+60, 335, 20, 20);
  ellipse(mobil1+72, 345, 20, 20);
  ellipse(mobil1+45, 335, 20, 20);
  //mobil2
  fill(160,82,45);
  rect(mobil2, 360,75,19, 4);
  ellipse(mobil2+45, 360, 60,30);
  fill(0);
  circle(mobil2+25, 375, 20);
  translate(35,0);
  circle(mobil2+25, 375, 20);
  fill(255);
  arc(mobil2+10, 360, 50, 20, PI, PI+PI);
  fill(245,245,245,100);
  ellipse(mobil2+45, 375, 20, 20);
  ellipse(mobil2+55, 380, 20, 20);
  ellipse(mobil2+60, 365, 20, 20);
  ellipse(mobil2+72, 375, 20, 20);
  ellipse(mobil2+45, 365, 20, 20);
  //mobil3
  fill(154,205,50);
  rect(mobil3, 335,40,19, 4);
  rect(mobil3+10, 315, 30, 25,4);
  triangle(mobil3, 340, mobil3+20, 335, mobil3+10, 315);
  fill(192,192,192);
  rect(mobil3+40, 305, 60, 50);
  fill(0);
  rect(mobil3, 350, 100, 5, 4);
  circle(mobil3+20, 350, 20);
  translate(60,0);
  circle(mobil3+20, 350, 20);
  fill(255);
  rect(mobil3-47, 320, 22, 10);
  fill(245,245,245,100);
  ellipse(mobil3+50, 345, 20, 20);
  ellipse(mobil3+60, 350, 20, 20);
  ellipse(mobil3+65, 335, 20, 20);
  ellipse(mobil3+77, 345, 20, 20);
  ellipse(mobil3+50, 335, 20, 20);
  //mobil4
  fill(0,0,139);
  rect(mobil4, 360,75,19, 4);
  rect(mobil4+23, 340, 30,30,4);
  triangle(mobil4, 360, mobil4+23, 340, mobil4+23, 370);
  triangle(mobil4+75, 360, mobil4+53, 340, mobil4+53, 370);
  fill(255);
  rect(mobil4+25, 345, 25,15);
  fill(0);
  circle(mobil4+20, 375, 20);
  translate(35,0);
  circle(mobil4+20, 375, 20);
  fill(245,245,245,100);
  ellipse(mobil4+45, 375, 20, 20);
  ellipse(mobil4+55, 380, 20, 20);
  ellipse(mobil4+60, 365, 20, 20);
  ellipse(mobil4+72, 375, 20, 20);
  ellipse(mobil4+45, 365, 20, 20);
  mobil1 += -5;
  mobil2 += -5;
  mobil3 += -5;
  mobil4 += -5;
  
  if(mobil1<0){
    mobil1=600;
  }
  if(mobil2<-45){
    mobil2=555;
  }
  if(mobil3<-80){
    mobil3=520;
  }
  if(mobil4<-140){
    mobil4=460;
  }
}


void scene7(){
  f = createFont("PTSerif-Bold", 12);
  textFont(f, 12);
  if(time%2==0){
    background(255);
    //bird-body
    fill(0,102,204);
    noStroke();
    ellipse(width/2, height/2, 95, 110);
    //bird-eye
    fill(0);
    ellipse(280, 190, 7,10);
    ellipse(320, 190, 7,10);
    //bird-parrot
    fill(255,165,0);
    triangle(295,205,305,205,300,215);
    //bird-wings
    fill(0,51,102);
    arc(345, 220, 40, 40, 0, QUARTER_PI+PI, CHORD);
    arc(255, 220, 40, 40, 7*PI/4, 2*PI+1/2*PI);
    arc(255, 220, 40, 40, 0, 3*PI/4);
    //bird-leg
    stroke(1);
    line(290,254,290,275);
    line(290,275,285,275);
    line(310,254,310,275);
    line(310,275,315,275);
  }
  else{
    background(255);
    //bird-body
    fill(0,102,204);
    noStroke();
    ellipse(width/2, height/2, 95, 110);
    //bird-eye
    fill(0);
    ellipse(280, 190, 7,10);
    ellipse(320, 190, 7,10);
    //bird-parrot
    fill(255,165,0);
    triangle(295,205,305,205,300,198);
    triangle(295, 205, 305, 205, 300,215);
    fill(178,34,34);
    triangle(297, 205, 303, 205, 300, 210);
    //bird-wings
    fill(0,51,102);
    arc(345, 210, 40, 50, 0,PI, CHORD);
    arc(255, 220, 40, 40, 7*PI/4, 2*PI+1/2*PI);
    arc(255, 220, 40, 40, 0, 3*PI/4);
    //bird-leg
    stroke(1);
    line(290,254,290,275);
    line(290,275,285,275);
    line(310,254,310,275);
    line(310,275,315,275);
  }
  //bubble chat
  if(time>173 && time <= 178){
    noStroke();
    fill(220);
    ellipse(290, 80, 150, 50);
    fill(0);
    text("got what i mean?", 245, 85);
  }
  if(time>178 && time <=188){
    noStroke();
    fill(220);
    ellipse(290, 80, 150, 50);
    fill(0);
    text("got what i mean?", 245, 85);
    fill(220);
    ellipse(500, 150, 150, 70);
    fill(0);
    text("memang senang bisa", 440, 145);
    text("beraktivitas kembali,", 442, 162);
  }
  if (time>188 && time <=213){
    noStroke();
    fill(220);
    ellipse(290, 80, 150, 50);
    fill(0);
    text("got what i mean?", 245, 85);
    fill(220);
    ellipse(500, 150, 150, 70);
    fill(0);
    text("memang senang bisa", 440, 145);
    text("beraktivitas kembali,", 442, 162);
    scale(3);
    fill(220);
    ellipse(155, 72, 50, 30);
    fill(0);
    textFont(f, 4);
    text("tapi tidak bisakah kita", 134, 68);
    text("mencoba lebih peduli", 134, 73);
    text("dengan lingkungan", 136, 78);
    text("kita sendiri?", 143, 83);
  }
  if(time >213 && time <= 255){
    noStroke();
    fill(220);
    ellipse(290, 80, 150, 50);
    fill(0);
    text("got what i mean?", 245, 85);
    fill(220);
    ellipse(500, 150, 150, 70);
    fill(0);
    text("memang senang bisa", 440, 145);
    text("beraktivitas kembali,", 442, 162);
    fill(220);
    ellipse(130, 220, 140, 60);
    fill(0);
    text("yuk kurangi", 95, 215);
    text(" polusi udara!", 90, 235);
    fill(154,205,50);
    textFont(f, 20);
    text("BE A PART OF THE SOLUTION,", 160, 320);
    text(" PART OF THE", 200, 350);
    fill(178,34,34);
    text("NOT", 150, 350);
    text("POLLUTION", 350, 350);
    scale(3);
    fill(220);
    ellipse(155, 72, 50, 30);
    fill(0);
    textFont(f, 4);
    text("tapi tidak bisakah kita", 134, 68);
    text("mencoba lebih peduli", 134, 73);
    text("dengan lingkungan", 136, 78);
    text("kita sendiri?", 143, 83);
  }
  
}
