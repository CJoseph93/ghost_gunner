 /// @description Player Movement

//get inputs
	var _rightkey = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var _leftkey = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var _upkey = keyboard_check(vk_up) or keyboard_check(ord("W"));
	var _downkey = keyboard_check(vk_down) or keyboard_check(ord("S"));
	var _firekey = mouse_check_button(mb_left);

// get x and y speed

	xspeed = (_rightkey - _leftkey) * mspeed;
	yspeed = (_downkey - _upkey) * mspeed;

//Aiming
	centery = y + centeryoffset;
	aimdir = point_direction(x, centery, mouse_x, mouse_y);

//Collisions go here

	if place_meeting(x + xspeed, y, obj_parent_wall) {
		xspeed = 0;
	}

	if place_meeting(x, y + yspeed, obj_parent_wall) {
		yspeed = 0;
	}

//move the player

	x += xspeed;
	y += yspeed;

//Fire weapon
	if _firekey and (fireRate-- <= 0) {
		var xp, yp;
		xp = obj_parent_weapon.x + 28 * cos(degtorad(obj_parent_weapon.image_angle));
		yp = obj_parent_weapon.y - 30 * sin(degtorad(obj_parent_weapon.image_angle));
		
		var bullet_inst = instance_create_depth(xp, yp, depth - 100, obj_test_projectile);
	
		with (bullet_inst) {
			dir = other.aimdir;
		}
		fireRate = obj_parent_weapon.fireRate;
	}














