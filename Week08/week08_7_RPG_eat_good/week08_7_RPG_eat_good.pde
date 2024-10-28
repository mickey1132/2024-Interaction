int [][]floor={
  {1, 13, 1, 14, 1, 1, 1, 5, 1, 1, 1, 18, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 1, 18, 14, 1, 1, 7, 1, 1, 1, 1, 14, 15, 2, 3, 4, 1, 7, 3, 10},
  {1, 1, 1, 14, 1, 9, 1, 1, 9, 1, 1, 11, 16, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10}, };
PImage img, user;
PImage []fimg=new PImage[40];
void setup()
{
  size(640, 480);
  img=loadImage("640x480.png");
  user=loadImage("13.jpg");
  for (int i=1; i<22; i++)fimg[i]=loadImage(i+".jpg");
}
int userI=12, userJ=15;
void draw()
{
  for (int i=0; i<floor.length; i++)
  {
    for (int j=0; j<20; j++)
    {
      int now=floor[i][j];
      image(fimg[now], j*32, i*32);
      if(gameOver) background(0,255,0);
    }
  }
  image(user, userJ*32, userI*32);
}
boolean gameOver=false;
void keyPressed()
{
  int newI=userI, newJ=userJ;
  if (keyCode==RIGHT)newJ++;
  if (keyCode==LEFT)newJ--;
  if (keyCode==UP)newI--;
  if (keyCode==DOWN)newI++;
  if (floor[newI][newJ]!=1&&floor[newI][newJ]!=10)
  {
    userI=newI;
    userJ=newJ;
    if(floor[newI][newJ]!=15)gameOver=true;
    floor[newI][newJ]=10;
  }
}
