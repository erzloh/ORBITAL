if triggered
{
	if time < duration
	{
		image_xscale = ease_out_elastic(time, start, dest - start, duration);
		image_yscale = ease_out_elastic(time, start, dest - start, duration);
		time++;
	}
	else
	{
		var tempStart = start;
		start = dest;
		dest = tempStart
		time = 0;
	}
}