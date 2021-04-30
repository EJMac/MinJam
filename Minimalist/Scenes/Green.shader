shader_type canvas_item;

void fragment()
{
	vec4 temp = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0);
	float tempg = temp.g;
	float avg = (temp.r + temp.g + temp.b) / 3.0;
	COLOR.rgb = vec3(avg); 
	
	if (tempg > avg)
	{
		
	float diff = tempg - avg;
	
	COLOR.g += diff;
	COLOR.r -= (diff/2.0);
	COLOR.b -= (diff/2.0);
	
	}
}