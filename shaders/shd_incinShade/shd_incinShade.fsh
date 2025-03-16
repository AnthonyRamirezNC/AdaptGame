//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 colors = texture2D( gm_BaseTexture, v_vTexcoord );
	colors.r *= 1.4;
	colors.rgb *= .6;
    gl_FragColor = colors;
}
