by = y + liqHeight;

draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(sLava, 0));
    for(i = 0; i < nodeCount; i++) {
        nx = x + i*nodeWidth;
        ny = nodes[i, 1] + nodes[i, 3] + (liqBobAmount * dsin((i * liqBobScale) - (current_time * liqBobSpeed)));
        
        uv = i / nodeCount;
        draw_vertex_texture(nx, ny, uv, 0);
        draw_vertex_texture(nx, by, uv, 1);
    }
draw_primitive_end();

//draw glow color
draw_set_blend_mode(bm_add);
draw_primitive_begin(pr_trianglestrip);
    for(i = 0; i < nodeCount; i++) {
        nx = x + i*nodeWidth;
        ny = nodes[i, 1] + nodes[i, 3] + (liqBobAmount * dsin((i * liqBobScale) - (current_time * liqBobSpeed)));
        
        uv = i / nodeCount;
        draw_vertex_colour(nx, ny, c_yellow, glow);
        draw_vertex_colour(nx, by, c_yellow, 1 - glow);
    }
draw_primitive_end();

draw_set_blend_mode(bm_normal);

//draw surface
draw_primitive_begin(pr_trianglestrip);
    for(i = 0; i < nodeCount; i++) {
        nx = x + i*nodeWidth;
        ny = nodes[i, 1] + nodes[i, 3] + (4 * dsin((i * liqBobScale) - (current_time / 4)));
        ny2 = nodes[i, 1] - nodes[i, 3] + (4 * dsin((i * liqBobScale) - (current_time / 4)));
       
        
        uv = (i - 1) / nodeCount;
        draw_vertex_colour(nx, ny, c_yellow, 0.5);
        draw_vertex_colour(nx, ny2, c_white, 0.5);
    }
draw_primitive_end();

draw_set_blend_mode(bm_add);
//draw surface glow
draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(sLavaGlow, 0));
    for(i = 0; i < nodeCount; i++) {
        nx = x + i*nodeWidth;
        ny = nodes[i, 1] + nodes[i, 3] + (liqBobAmount * dsin((i * liqBobScale) - (current_time * liqBobSpeed)));
        
        uv = (i - 1) / nodeCount;
        draw_vertex_texture_color(nx, ny - 32, uv, 0, c_yellow, 0.5);
        draw_vertex_texture_color(nx, ny + 32, uv, 1, c_white, 0.5);
    }
draw_primitive_end();

draw_set_blend_mode(bm_normal);
