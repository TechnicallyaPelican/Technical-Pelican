//get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,OWall)) && (key_jump)
{
	vsp = -7
}

//horizontal collision
if (place_meeting(x+hsp,y,OWall))
{
	while (!place_meeting(x+sign(hsp),y,OWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

//vertical collision
if (place_meeting(x,y+vsp,OWall))
{
	while (!place_meeting(x,y+sign(vsp),OWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;
x = x + hsp;

//animation
if (!place_meeting(x,y+1,OWall))
{
	sprite_index=SplayerJump;
	
	image_speed=0;
	
	if (sign(vsp) > 0) image_index=1; else image_index=0;
}
else
{
	image_speed=1;
	if (hsp == 0)
	{
		sprite_index = SPlayer;
	}
	else
	{
		sprite_index = SplayerRun;
	}
}
if (hsp!=0) image_xscale=sign(hsp);











