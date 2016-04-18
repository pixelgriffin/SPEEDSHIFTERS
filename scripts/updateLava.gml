liqWaveAngle += liqWaveSpeed;

//update spring powers
for(i = 0; i < nodeCount; i++) {
    cx = nodes[i, 0] - nodes[i, 1];
    //0.025 * cx - (spd * 0.0125);
    nodes[i, 2] += liqTension * cx - (nodes[i, 2] * liqDamp);
    nodes[i, 1] += nodes[i, 2];
}

//transfer power
for(i = 0; i < nodeCount; i++) {
    for(j = 0; j < nodeCount; j++) {
        if(j > 0) {
            deltaL = liqSpread * (nodes[j, 1] - nodes[j - 1, 1]);
            nodes[j - 1, 2] += deltaL;
            
            nodes[j - 1, 1] += deltaL;
        }
        
        if(j < nodeCount - 1) {
            deltaR = liqSpread * (nodes[j, 1] - nodes[j + 1, 1]);
            nodes[j + 1, 2] += deltaR;
            
            nodes[j + 1, 1] += deltaR;
        }
        
        nodes[j, 3] = (dsin(liqWaveAngle + nodes[j, 4]) * liqWaveAmount) * is_even(j);
    }
}

//update glowing
glowA += glowS;
glow = (dsin(glowA) + 1) / 2;
