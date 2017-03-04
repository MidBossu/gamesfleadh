
left = argument0;
right = argument1;
forward = argument2;
back = argument3;
boostKey = argument4;
driftKey = argument5;

///Controls
key_left = left;
key_right = -right;
key_up = forward;
key_brake = back;

if(drift = 1)
{
image_angle+=vehicleDrift * (key_left + key_right);
}
else
{
image_angle += vehicleHandling * (key_left + key_right);
speed -= abs(key_left + key_right)*(vehicleAccl + 0.005);
}

if(drift = 0 && key_up)
{
speed += vehicleAccl;
}
else if(key_brake)
{
speed -= vehicleBrake;
}
else
{
}

//Boost
if(boost > 0 && boostKey)
{
var turbo = instance_create(x,y,obj_turbo);
    with(turbo)
    {
    direction = other.image_angle;
    image_angle = other.image_angle;
    }
vehicleSpeed = 20;
vehicleAccl = 0.5;
boost--;
activeboost = 1;


}
else
{
activeboost = 0;
}

if(speed >= 5 && driftKey)
{
holdSpeed = speed;
drift = 1;
}
else
{
drift = 0;
holdSpeed = speed/2;
}
