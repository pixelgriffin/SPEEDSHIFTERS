//createLava(x, y, width, height, nodeCount);

lava = instance_create(argument0, argument1, oLava);
lava.liqWidth = argument2;
lava.liqHeight = argument3;
lava.image_xscale = lava.liqWidth / sprite_get_width(lava.sprite_index);
lava.image_yscale = lava.liqHeight / sprite_get_height(lava.sprite_index);
lava.nodeCount = argument4;
lava.nodeWidth = lava.liqWidth / (lava.nodeCount - 1);
lava.liqBobScale = lava.nodeWidth;

//build nodes
with(lava) {
    for(i = 0; i < nodeCount; i++) {
        nodes[i, 0] = y;
        nodes[i, 1] = y;
        nodes[i, 2] = 0;
        nodes[i, 3] = 0;
        nodes[i, 4] = random(360);
    }
}
