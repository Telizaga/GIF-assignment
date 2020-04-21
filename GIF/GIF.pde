ArrayList<PImage> gif;
int n = 0;
void setup(){
  size(800,700);
  gif= new ArrayList<PImage>();
  int i=0;
  while(i<12) {
    String zero = "";
    if(i<10) zero = "0";
    gif.add(loadImage("frame_" + zero + i +"_delay-0.07s.png"));
    i++;
  }
  frameRate(15);
  
}
void draw(){
  PImage frame = gif.get(n);
  image(frame,0,0,width,height);
  n++;
  if(n>11)n=0;
}
