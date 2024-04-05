
int from_physical_value_to_pixel(float position_){
   return int(position_*1000/10);
}


class square {
  float lenght;
  float mass;
  float position;
  float velocity;
  float acceleration;
  


  //constructor
    square(){
    lenght=1;//[m]
    mass=1;//[kg]
    position = 5;//[m]
    velocity = 0; //[m/s]
    acceleration=0; //[m/s^2] 
    }
    
    //methods
    void update_square(float applied_force, float dt){
      acceleration=(applied_force-alpha*velocity)/mass;
      velocity=velocity+acceleration*dt;
      position=position+velocity*dt;
      
      if (position <= lenght/2.0 || position >= 10-lenght/2.0) {
      velocity=-beta*velocity;
      }
      
    }
    
      void draw_square(){
      
      square(from_physical_value_to_pixel(position)-from_physical_value_to_pixel(lenght)/2, 600-from_physical_value_to_pixel(lenght), from_physical_value_to_pixel(lenght));
      fill(255, 0, 0);
      }
    
    
      
            
}
