p3_system = part_system_create();
part_rain = part_type_create();
emmiterRain = part_emitter_create(p3_system);

part_emitter_region(p3_system,emmiterRain,x,x+sprite_width,y+sprite_height,y+reach,ps_shape_rectangle,ps_distr_linear);
part_type_sprite(part_rain,sRain,false,false,false);
part_type_size(part_rain,2,2,0,0);
part_type_gravity(part_rain,0.3,270)
part_type_life(part_rain,5,reach/10);
part_emitter_stream(p3_system,emmiterRain,part_rain,15);
raining = true;
