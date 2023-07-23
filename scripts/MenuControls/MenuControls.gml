// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MenuControls(){
	
	keyUp = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
	keyDown = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) ;
	keySelect = keyboard_check_pressed(vk_space);
	keyBack = keyboard_check_pressed(ord("E"))
}