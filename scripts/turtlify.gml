toChange = choose(0, 1, 2);

if(toChange == 0) {
    if(oRacer.helmetSprite != sPlayerHeadTurtle) {
        oRacer.maxSpeed -= 1;
    }
    
    if(oRacer.helmetSprite == sPlayerHeadBat) {
        oRacer.maxSpeed--;
    } else if(oRacer.helmetSprite == sPlayerHeadFrog) {
        oRacer.jumpSpeed--;
    }

    oRacer.stationaryHeadSprite = sPlayerHeadStationaryTurtle;

    oRacer.helmetSprite = sPlayerHeadTurtle;
    oRacer.helmetSpriteRun = sPlayerHeadTurtleRun;
    oRacer.helmetSpriteJump = sPlayerHeadTurtleJump;
    
    repeat(2 + irandom(3)) {
        instance_create(oRacer.x + random_range(-2, 2), oRacer.y - 12 + random_range(-2, 2), oDust);
    }
    
} else if(toChange == 1) {
    if(oRacer.shirtSprite != sPlayerShirtTurtle) {
        oRacer.maxSpeed -= 1;
    }
    
    if(oRacer.shirtSprite == sPlayerShirtBat) {
        oRacer.maxSpeed--;
    } else if(oRacer.shirtSprite == sPlayerShirtFrog) {
        oRacer.jumpSpeed--;
    }

    oRacer.shirtSprite = sPlayerShirtTurtle;
    oRacer.shirtSpriteRun = sPlayerShirtTurtleRun;
    oRacer.shirtSpriteJump = sPlayerShirtTurtleJump;
    
    repeat(2 + irandom(3)) {
        instance_create(oRacer.x + random_range(-3, 3), oRacer.y + random_range(-4, 3), oDust);
    }
} else if(toChange == 2) {
    if(oRacer.pantsSprite != sPlayerPantsTurtle) {
        oRacer.maxSpeed -= 1;
    }
    
    if(oRacer.pantsSprite == sPlayerPantsBat) {
        oRacer.maxSpeed--;
    } else if(oRacer.pantsSprite == sPlayerPantsFrog) {
        oRacer.jumpSpeed--;
    }
    
    oRacer.pantsSprite = sPlayerPantsTurtle;
    oRacer.pantsSpriteRun = sPlayerPantsTurtleRun;
    oRacer.pantsSpriteJump = sPlayerPantsTurtleJump;
    
    repeat(3 + irandom(3)) {
        instance_create(oRacer.x + random_range(-3, 3), oRacer.y + 8 + random_range(-3, 4), oDust);
    }
}

instance_create(oRacer.x, oRacer.y - 16, oMinusSpeed);
