toChange = choose(0, 1, 2);

if(toChange == 0) {
    if(oRacer.helmetSprite != sPlayerHeadFrog) {
        oRacer.jumpSpeed += 1;
    }
    
    if(oRacer.helmetSprite == sPlayerHeadTurtle) {
        oRacer.maxSpeed++;
    } else if(oRacer.helmetSprite == sPlayerHeadBat) {
        oRacer.maxSpeed--;
    }

    oRacer.stationaryHeadSprite = sPlayerHeadStationaryFrog;

    oRacer.helmetSprite = sPlayerHeadFrog;
    oRacer.helmetSpriteRun = sPlayerHeadFrogRun;
    oRacer.helmetSpriteJump = sPlayerHeadFrogJump;
    
    repeat(2 + irandom(3)) {
        instance_create(oRacer.x + random_range(-2, 2), oRacer.y - 12 + random_range(-2, 2), oDust);
    }
    
} else if(toChange == 1) {
    if(oRacer.shirtSprite != sPlayerShirtFrog) {
        oRacer.jumpSpeed += 1;
    }
    
    if(oRacer.shirtSprite == sPlayerShirtTurtle) {
        oRacer.maxSpeed++;
    } else if(oRacer.shirtSprite == sPlayerShirtBat) {
        oRacer.maxSpeed--;
    }

    oRacer.shirtSprite = sPlayerShirtFrog;
    oRacer.shirtSpriteRun = sPlayerShirtFrogRun;
    oRacer.shirtSpriteJump = sPlayerShirtFrogJump;
    
    repeat(2 + irandom(3)) {
        instance_create(oRacer.x + random_range(-3, 3), oRacer.y + random_range(-4, 3), oDust);
    }
} else if(toChange == 2) {
    if(oRacer.pantsSprite != sPlayerPantsFrog) {
        oRacer.jumpSpeed += 1;
    }
    
    if(oRacer.pantsSprite == sPlayerPantsTurtle) {
        oRacer.maxSpeed++;
    } else if(oRacer.pantsSprite == sPlayerPantsBat) {
        oRacer.maxSpeed--;
    }
    
    oRacer.pantsSprite = sPlayerPantsFrog;
    oRacer.pantsSpriteRun = sPlayerPantsFrogRun;
    oRacer.pantsSpriteJump = sPlayerPantsFrogJump;
    
    repeat(3 + irandom(3)) {
        instance_create(oRacer.x + random_range(-3, 3), oRacer.y + 8 + random_range(-3, 4), oDust);
    }
}

instance_create(oRacer.x, oRacer.y - 16, oPlusJump);
