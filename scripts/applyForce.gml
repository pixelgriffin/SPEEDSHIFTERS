sx = clamp((argument0 - x) / nodeWidth, 0, nodeCount - 1);

nodes[floor(sx), 2] = argument1 * (1 - frac(sx));
nodes[ceil(sx), 2] = argument1 * frac(sx);
