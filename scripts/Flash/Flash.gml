draw_self();

// If the object get hit
if flash > 0
{
	flash--;
	
	// Make the flash effect with a shader
	shader_set(shWhite);
	draw_self();
	shader_reset();
}