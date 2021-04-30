shader_type canvas_item;

void fragment()
{
	vec4 temp = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0);

	float tempb = temp.b;
	float avg = (temp.r + temp.g + temp.b) / 3.0;
	COLOR.rgb = vec3(avg); 
	if (tempb > avg)
	{
		
	float diff = tempb - avg;
	
	COLOR.b += diff;
	COLOR.g -= (diff/2.0);
	COLOR.r -= (diff/2.0);
	
	}
	
}