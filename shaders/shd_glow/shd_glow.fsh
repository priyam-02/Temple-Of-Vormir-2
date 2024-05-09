// Golden Glow Shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time; // Time parameter for animation

void main()
{
    // Get the texture color at the current pixel
    vec4 tex_color = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Calculate the pulsating glow effect based on time
    float glow = 0.5 + 0.5 * sin(time * 2.0);
    
    // Adjust the red and green channels to create a golden hue
    tex_color.r += glow;
    tex_color.g += glow * 0.5;
    
    // Apply the modified color
    gl_FragColor = tex_color * v_vColour;
}
