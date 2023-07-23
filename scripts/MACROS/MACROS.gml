enum chars {
	player,
	Yvoodoo,
	Rvoodoo,
	Bvoodoo
}
/*
*2 = 2732
*3 = 4098
*4 = 5464
*/
#macro WALKSPD 7
#macro MARGIN_X 50
#macro MARGIN_Y 50
#macro RESOLUTION_W 1366
#macro RESOLUTION_H 768
#macro TRANSITION_SPD 0.02
#macro OUT 0
#macro IN 1
#macro sfx 50
#macro buffer 100
function OffCamera(_obj){
	var _cam = global.camera;
	if(_obj.x > _cam.x + _cam.view_w_half || _obj.x < _cam.x - _cam.view_w_half || 
	_obj.y < _cam.y - _cam.view_h_half - 100 || _obj.y > _cam.y + _cam.view_h_half + 100){
		return true;
	}
	return false;
}