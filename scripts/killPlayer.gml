with(oRacer) {
    instance_destroy();
}

oCamera.alarm[1] = 150;
oCamera.died = true;
oCamera.shake = 5;
global.timeToGo = false;
global.consecutiveWins = 0;

if(!audio_is_playing(sndDie))
    audio_play_sound(sndDie, 10, false);

repeat(2) {
    //legs
    gib = instance_create(x + random_range(-4, 4), y + random_range(-5, 5), oPlayerGib);
    gib.image_index = 0;
    
    //arms
    gib = instance_create(x + random_range(-4, 4), y + random_range(-5, 5), oPlayerGib);
    gib.image_index = 2;
}

//head
gib = instance_create(x + random_range(-4, 4), y + random_range(-5, 5), oPlayerGib);
gib.image_index = 1;

//body
gib = instance_create(x + random_range(-4, 4), y + random_range(-5, 5), oPlayerGib);
gib.image_index = 3;
