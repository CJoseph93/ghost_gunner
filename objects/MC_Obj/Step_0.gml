/// @description Player Movement

//get inputs
var _rightkey = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _leftkey = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _upkey = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _downkey = keyboard_check(vk_down) or keyboard_check(ord("S"));

// get x and y speed

xspeed = (_rightkey - _leftkey) * mspeed;
yspeed = (_downkey - _upkey) * mspeed;

//Collisions go here

//move the player

x += xspeed;
y += yspeed;