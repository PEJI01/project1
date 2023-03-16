var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space) || keyboard_check_direct((ord("W")));
var onTheGround = place_meeting(x, y + 1, oGround);
var run = keyboard_check(vk_lshift)
var down = keyboard_check(ord("S")) || keyboard_check(vk_lcontrol);

/// walking - running
if (xDirection != 0) 
{
	image_xscale = 1*xDirection;
}
xSpeed = xDirection * spd;
ySpeed++;

if (onTheGround) 
{
	if(xDirection != 0 && run)
	{		
		spd=4;		
		sprite_index= Running;	
	}
	
	else
	{
	 spd=2;
	 sprite_index=Idle_R;	
	}
	
	if ( xDirection==0 && down)
   {
      sprite_index= Crouched;
   }
   
   
 
 /// jumping
	if (jump) 
	{
		ySpeed = -10;
	}
} 

else 
{
	sprite_index = Jump_R;
}




/// collision on walls/ground
if (place_meeting(x + xSpeed, y, oGround)) 
{ 
	while (!place_meeting(x + sign(xSpeed), y, oGround)) 
	{
		x += sign(xSpeed);
	}
	xSpeed = 0; 
}
x += xSpeed;

if (place_meeting(x, y + ySpeed, oGround)) 
{ 
	while (!place_meeting(x, y + sign(ySpeed), oGround)) 
	{	
		y += sign(ySpeed);
	}
	ySpeed = 0; 
}
y += ySpeed;


