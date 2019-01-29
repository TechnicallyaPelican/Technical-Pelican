//aiming/positioning
x=OPlayer.x;
y=OPlayer.y+8;
image_angle=point_direction(x,y,mouse_x,mouse_y);

//firing
if (image_angle>90) and (image_angle<270)
{
firerate=firerate-1;
recoil=max(0,recoil-1);
if (mouse_check_button(mb_left)) and (firerate<0)
{
	recoil=4;
	firerate=5;
	
with (instance_create_layer(x,y+12,"Lbullets",Obullet))
	{
		speed=50;
		image_angle=point_direction(x,y,mouse_x,mouse_y);
		direction=other.image_angle+random_range(5,-5);
	}
}
}
else
{
firerate=firerate-1;
recoil=max(0,recoil-1);
if (mouse_check_button(mb_left)) and (firerate<0)
{
	recoil=4;
	firerate=5;
	
with (instance_create_layer(x,y-2,"Lbullets",Obullet))
	{
		speed=50;
		image_angle=point_direction(x,y,mouse_x,mouse_y);
		direction=other.image_angle+random_range(5,-5);
	}
}
}
x=x-lengthdir_x(recoil,image_angle);
y=y-lengthdir_x(recoil,image_angle);

if (image_angle>90) and (image_angle<270)
{
image_yscale=-1;	
}
else
{
image_yscale=1;	
}

