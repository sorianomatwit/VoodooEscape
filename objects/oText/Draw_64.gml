/// @description draw Textbox
//nineSlices(sTextBoxBg,x1,y1,x2,y2,background); is replaced witht he sprite_stretch funciton 
//var _slicer = sprite_get_nineslice(sTextBoxBg);

/*	sprite	The sprite used to make the text boxes
	x1		The left position of the text box
	y1		The top position of the text box
	x2		The right position of the text box
	y2		The bottom position of the text box
	index	The image index of the sprite us
*/
//nineslice box
draw_sprite_stretched(sBoxes,background,x1,y1,wid,len);

//shadow
DrawSetText(c_black,fText,fa_center,fa_top);

var _print = string_copy(msg,1,textProgress);


//main text
//8 is the buffer(offeset)78

draw_text((x1+wid)/2,y1+MARGIN_Y,_print);
draw_set_color(c_white);
draw_text((x1+wid)/2,y1+MARGIN_Y-1,_print);