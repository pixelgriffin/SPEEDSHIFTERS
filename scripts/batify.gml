toChange = choose(0, 1, 2);

if(toChange == 0) {
    if(oRacer.helmetSprite != sPlayerHeadBat) {
        oRacer.maxSpeed += 1;
    }
    
    if(oRacer.helmetSprite == sPlayerHeadTurtle) {
        oRacer.maxSpeed++;
    } else if(oRacer.helmetSprite == sPlayerHeadFrog) {
        oRacer.jumpSpeed--;
    }

    oRacer.stationaryHeadSprite = sPlayerHeadStationaryBat;

    oRacer.helmetSprite = sPlayerHeadBat;
    oRacer.helmetSpriteRun = sPlayerHeadBatRun;
    oRacer.helmetSpriteJump = sPlayerHeadBatJump;
    
    repeat(2 + irandom(3)) {
        instance_create(oRacer.x + random_range(-2, 2), oRacer.y - 12 + random_range(-2, 2), oDust);
    }
    
} else if(toChange == 1) {
    if(oRacer.shirtSprite != sPlayerShirtBat) {
        oRacer.maxSpeed += 1;
    }
    
    if(oRacer.shirtSprite == sPlayerShirtTurtle) {
        oRacer.maxSpeed++;
    } else if(oRacer.shirtSprite == sPlayerShirtFrog) {
        oRacer.jumpSpeed--;
    }

    oRacer.shirtSprite = sPlayerShirtBat;
    oRacer.shirtSpriteRun = sPlayerShirtBatRun;
    oRacer.shirtSpriteJump = sPlayerShirtBatJump;
    
    repeat(2 + irandom(3)) {
        instance_create(oRacer.x + random_range(-3, 3), oRacer.y + random_range(-4, 3), oDust);
    }
} else if(toChange == 2) {
    if(oRacer.pantsSprite != sPlayerPantsBat) {
        oRacer.maxSpeed += 1;
    }
    
    if(oRacer.pantsSprite == sPlayerPantsTurtle) {
        oRacer.maxSpeed++;
    } else if(oRacer.pantsSprite == sPlayerPantsFrog) {
        oRacer.jumpSpeed--;
    }
    
    oRacer.pantsSprite = sPlayerPantsBat;
    oRacer.pantsSpriteRun = sPlayerPantsBatRun;
    oRacer.pantsSpriteJump = sPlayerPantsBatJump;
    
    repeat(3 + irandom(3)) {
        instance_create(oRacer.x + random_range(-3, 3), oRacer.y + 8 + random_range(-3, 4), oDust);
    }
}

instance_create(oRacer.x, oRacer.y - 16, oPlusSpeed);
