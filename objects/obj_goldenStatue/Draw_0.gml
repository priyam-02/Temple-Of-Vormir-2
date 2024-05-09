// Step Event for the golden statue object
shader_set(shd_glow); // Activate the shader
shader_set_uniform_f(shader_get_uniform(shd_glow, "time"), current_time); // Update time parameter
draw_self(); // Draw the golden statue
shader_reset(); // Deactivate the shader
