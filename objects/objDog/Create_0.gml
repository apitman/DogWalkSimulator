/// @description Initialize variables
hspeed = 0;
vspeed = 0;
image_speed = 0;
pointOfInterest = undefined;
walkHVelocity = 10;
walkVVelocity = 5;
runHVelocity = 20;
runVVelocity = 10;
leashRange = 300;
poiRunRange = 250;
sniffing = false;
pausing = true;
gettingCalled = false;
distractionChance = 0.2;
walkAnimSpeed = 1;
sniffAnimSpeed = 1;

// Offsets used by objLeash
leashOffsetX = 84;
leashOffsetY = 72;

// Alarm timers
pauseTime = 30 * 0.5; // 0.5 seconds at 30 fps
sniffTime = 30 * 1; // 1 second at 30 fps
obedientTime = 30 * 2; // 2 seconds at 30 fps
distractionTime = 30 * 4; // 4 seconds at 30 fps

// Start by setting the pause timer
alarm[0] = pauseTime;
