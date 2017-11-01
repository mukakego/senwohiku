class sen { 
  float a, b, c;

  sen(float _a, float _b, float _c) {
    a = _a;
    b = _b;
    c = _c;
  }

  void display() {
    if (a != 0) {
      float x1 = (c - b * 0)/a;
      float x2 = (c - b * height)/a;
      line(x1, 0, x2, height);
    } else if (b != 0) {
      float y1 = c/b;
      float y2 = y1;
      line(0, y1, width, y2);
    }
  }
}

sen hoge;
int x1=0, y1=0 , x2 , y2;

void setup() {
  size(400, 400);

  fill(0);
}

void draw() {

  background(255); 

  if (mousePressed) {
    x1 = mouseX;
    y1 = mouseY;
  }
  
  x2 = mouseX;
  y2 = mouseY;

  ellipse(x1, y1, 5, 5);
  ellipse(x2, y2, 5, 5);
  
  hoge = new sen(x1-x2, y1-y2, (x1*x1+y1*y1-x2*x2-y2*y2)/2);
  
  hoge.display();
}