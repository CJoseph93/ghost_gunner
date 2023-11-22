/// @description Main Char create

//movement speed vars
	mspeed = 8;
	xspeed = 0;
	yspeed = 0;


// Weapon info
	centeryoffset = -32;
	centery = y + centeryoffset;
	aimdir = 0;
	bullet_obj = obj_test_projectile;


instance_create_depth(x + 48, centery, depth - 100, obj_TommyGun);

fireRate = obj_parent_weapon.fireRate;