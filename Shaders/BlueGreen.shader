shader_type canvas_item;

void fragment()
{
	vec4 temp = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0);
	float tempg = temp.g;
	float tempb = temp.b;
	float tempr = temp.r;
	float avg = (temp.r + temp.g + temp.b) / 3.0;
	COLOR.rgb = vec3(avg); 
	
	COLOR.r = avg /3.0;
	COLOR.b = tempb;
	COLOR.g = tempg;
	
	if ( tempb < tempr * 0.15 && tempg < tempr *0.15)
	{
		COLOR.rgb = vec3(avg);
		
	}
	
}