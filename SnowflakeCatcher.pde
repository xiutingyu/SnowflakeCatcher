Snowflake [] bob; 
void setup()
{

  size(300,300);
  background(0);
  bob = new Snowflake[40];
  for (int i=0; i<bob.length; i++)
  {
    bob[i] = new Snowflake();
  }//your code here
}
void draw()
{
  

  fill(255,255,255);
  ellipse(250,50,50,50);
  for (int i=0; i<bob.length; i++)
  {
  bob [i].erase();
  bob [i].lookDown();
  bob[i].move();
  bob[i].wrap();
  bob [i].show();//your code here
}
}

void mouseDragged()
{

fill(0,(int)(Math.random()*256),(int)(Math.random()*200),250);
ellipse(mouseX, mouseY, 10,10);
fill(0,0,0);
ellipse(mouseX+10,mouseY+10,10,10);//your code here
}

class Snowflake
{
  int x;
  int y;
  boolean isMoving;
  //class member variable declarations
  Snowflake()
  {
    x=(int)(Math.random()*301);
    y=(int)(Math.random()*301);
    isMoving=true;
     //class member variable initializations
  }

  void show()
  {
    noStroke();
    fill(255,255,255);
    ellipse(x,y,5,5);//your code here
  }

  void lookDown()
  {
    if (y>0 && y<297 && (get(x,y+3)!=color(0)))
      //because when the snowflakes looked down 3 units below, the background
      //is still black--> thus wrap around and keep moving;
    {
    isMoving=false;
    }
    else
  {
    isMoving=true;//your code here
  }
  }

  void erase()
  {
    fill(0,0,0);
    ellipse(x, y, 7, 7);
    //your code here
  }
  void move()
  {
    if (isMoving==true)
    y++;//your code here
  }
  void wrap()
  {
    if (y>300)
    {
      y=0;
    }//your code here
  }
}