if (hp <= 0)

{
	with (instance_create_layer(x,y,layer,OenemyDead))
	{	
		direction=other.hitfrom;
		hsp=lengthdir_x(3,direction);
		vsp=lengthdir_y(3,direction)-3;
		image_xscale=sign(hsp);
	}
	
	instance_destroy();
}
