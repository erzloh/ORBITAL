if time < duration
{
	rot = ease_out_quintic(time, startRot, destRot - startRot, duration);
	triangleX = ease_out_quintic(time, startX, destX - startX, duration);
	time++;
}
else
{
	triangleX = destX +(sin(get_timer()/300000)*6);
}
