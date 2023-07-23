kLeft = 0;
kRight = 0
kJump = 0;
kactive = 0;
kGoBack = 0;
depth = -bbox_bottom;
lastState = PlayerWalk;
P_System = part_system_create_layer("Instances",false);
Particle1_Emitter2 = part_emitter_create(P_System);
SpriteHandler(char);
part3 = part_type_create();
part_type_shape(part3,pt_shape_disk);
part_type_size(part3,1,2,-.5,.1);
part_type_scale(part3,1,1);
switch(char){
	case chars.player:
	part_type_color1(part3,c_dkgray);
	break;
	case chars.Yvoodoo:
	part_type_color1(part3,c_yellow);
	break;
	case chars.Rvoodoo:
	part_type_color1(part3,c_red);
	break;
	case chars.Bvoodoo:
	part_type_color1(part3,c_teal);
	break;
}
part_type_speed(part3, 0.50, 2, -0.10, 0);
part_type_life(part3, 20, 60);






