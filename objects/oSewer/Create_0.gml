xx = xstart;
yy = ystart;


blowing = true;

particleSystem = part_system_create_layer("Instances",false);
particle1 = part_type_create();
//part_type_sprite(global.particle1,sAir3,true,true,false);
part_type_shape(particle1,pt_shape_disk);
//part_type_color_rgb(particle1,168,168,202,202,88,88);
part_type_color1(particle1,c_ltgrey);
part_type_size(particle1,0.01,.5,-0.01,0.01);
part_type_alpha1(particle1,1); 
part_type_speed(particle1,0.03,0.5,-0.10,0); 
part_type_direction(particle1,359,360,0,0.01);
part_type_life(particle1,30,60);