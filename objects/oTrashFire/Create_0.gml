event_inherited()
xx = xstart;
yy = ystart - sprite_height+30;

onFire = true;
deactivate = false;
p2System = part_system_create_layer("Instances",false);
//p2emmit = part_emitter_create(p2System);


fire = part_type_create();
//part_type_sprite(p2,sfireEffect,true,true,false);
part_type_shape(fire,pt_shape_flare);
part_type_color3(fire,c_yellow,c_orange,c_red);
part_type_size(fire,0.03,.3,0.01,0.01);
part_type_alpha1(fire,1); 
part_type_speed(fire,0.3,0.8,-0.2,0); 
part_type_direction(fire,45,45,20,0.01);
part_type_life(fire,30,40);


