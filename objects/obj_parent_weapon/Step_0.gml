/// @description Insert description here
// You can write your code in this editor

x = MC_Obj.x + 10;
y = MC_Obj.y - 30;

image_angle = point_direction(x,y,mouse_x,mouse_y)

if ((image_angle > 0 and image_angle < 90) or (image_angle < 359 and image_angle > 270)) {
	x = MC_Obj.x + 30;
	image_yscale = 1;
} else {
	x = MC_Obj.x - 30;
	image_yscale = -1;
}