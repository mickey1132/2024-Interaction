int [][]floor={
  {1, 13, 1, 14, 1, 1, 1, 5, 1, 1, 1, 18, 1, 2, 3, 4, 1, 7, 3, 10},
  {1, 1, 18, 14, 1, 1, 7, 1, 1, 1, 1, 14, 15, 2, 3, 4, 1, 7, 3, 10},
  {1, 1, 1, 14, 1, 9, 1, 1, 9, 1, 1, 11, 16, 2, 3, 4, 1, 7, 3, 10},
  {1, 7, 1, 14, 1, 1, 20, 1, 1, 1, 5, 17, 1, 2, 3, 4, 1, 7, 3, 10}, };
  PImage img;
  PImage []fimg=new PImage[40];
void setup()
{
  size(640, 480);
  img=loadImage("640x480.png");
  for(int i=1;i<22;i++)fimg[i]=loadImage(i+".jpg");
}
void draw()
{
  for (int i=0; i<4; i++)
  {
    for (int j=0; j<20; j++)
    {
      int now=floor[i][j];
      image(fimg[now],j*32,i*32);
    }
  }
  
}
