follow = global.inControl;



if (instance_exists(follow))
{
	xto = follow.x
	yto = follow.y
	
}
//update object position
x = x + (xto - x)/ 25;
y = y + (yto - y)/ 25;

//keep camera center inside room
x = clamp(x,view_w_half + buff, room_width - view_w_half - buff)
y = clamp(y,view_h_half + buff, room_height - view_h_half - buff)

if(collision_rectangle(x-view_w_half,y-view_h_half,x+view_w_half,y+view_h_half,global.inControl,false,false) and
!global.inCutscene){
	global.inControl.control = true;
}
//update camera view
camera_set_view_pos(cam, x - view_w_half,y- view_h_half);

