size(400, 400);
fill(#FFDC0F);//填充黃色
for (int x=0; x<400; x+=100) {
  for (int y=0; y<400; y+=100) {
    arc(x+50, y+50, 100, 100, 0 + 0.5, PI*2 - 0.5, PIE);//變畫弧度
    //(X座標,Y座標,寬,高,開始,結束,PIE)
  }
}