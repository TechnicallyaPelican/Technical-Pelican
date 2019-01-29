vsp = vsp + grv;

//horizontal collision
if (place_meeting(x+hsp,y,OWall))
{
	while (!place_meeting(x+sign(hsp),y,OWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index=SenemyJump;
	
	image_speed=0;
	
	if (sign(vsp) > 0) image_index=1; else image_index=0;
}
else
{
	image_speed=1;
	if (hsp == 0)
	{
		sprite_index = Senemy;
	}
	else
	{
		sprite_index = SenemyRun;
	}
}
if (hsp!=0) image_xscale=sign(hsp);

//attack animation
if (place_meeting(x+(hsp*10),y,OPlayer)) and done=0
{
hsp=hsp*4;
vsp=-3;
done=1;
}
while done=1 and vsp>=0
{
hsp=sign(hsp)*2;
done=0;
}






