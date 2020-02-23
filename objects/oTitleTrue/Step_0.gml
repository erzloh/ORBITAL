if time < duration
{
	x1 = ease_out_elastic(time, startX, destX - startX, duration);
	rot = ease_out_elastic(time, startRot, destRot - startRot, duration);
	xscale = ease_out_elastic(time, startScale, destScale - startScale, duration);
	yscale = ease_out_elastic(time, startScale, destScale - startScale, duration);
	time++;
}