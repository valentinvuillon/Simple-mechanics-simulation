square s;
int framerate=60;
float frame_time=1/60.0;
 
void setup() {
  
  size(1000, 600);
 
  frameRate(framerate); //[s^-1]
  
  s=new square();
 
}

float dt=frame_time/4.0;//[s];
float alpha=0.5;
float beta=1;
float applied_force=0; //[kg*m/s^2]

void draw(){

background(255); 

s.update_square(applied_force, dt);
s.update_square(applied_force, dt);
s.update_square(applied_force, dt);
s.update_square(applied_force, dt);

s.draw_square();


print(s.position+"   "+applied_force+"   "+s.velocity+"   "+s.acceleration+"   "+dt);
print("\n");

 
  if (keyPressed == true) {
    if (key == 'a') {
      applied_force=-10;
    }
    if (key=='z') {
      applied_force=10;
    }
    
  }else{
    applied_force=0;
  }


}
