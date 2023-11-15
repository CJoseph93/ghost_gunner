/// @description Movement
// You can write your code in this editor

	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);

	x += xspd;
	y += yspd;

//Collision destruction

	if place_meeting(x, y, obj_parent_wall) {
		instance_destroy();
	}