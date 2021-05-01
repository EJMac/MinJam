shader_type canvas_item;

void fragment()
{
	vec4 temp = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0);
	float tempr = temp.r;
	float tempg = temp.g;
	float tempb = temp.b;
	float avg = (temp.r + temp.g + temp.b) / 3.0;
	COLOR.rgb = vec3(avg); 
	
	COLOR.b = avg /3.0;
	COLOR.r = tempr;
	COLOR.g = tempg;
	
	if ( tempr < tempb * 0.15 && tempg < tempb *0.15)
	{
		COLOR.rgb = vec3(avg);
		
	}
	
}