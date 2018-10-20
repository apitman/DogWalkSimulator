/// @description Initialize variables
hspeed = 0;
vspeed = 0;
image_speed = 0;
pointOfInterest = undefined;
walkHVelocity = 10;
walkVVelocity = 5;
runHVelocity = 30;
runVVelocity = 15;
leashRange = 350;
poiRunRange = 250;
poiRange = 15;
sniffing = false;
pausing = true;

// Alarm timers
pauseTime = 30 * 3; // 3 seconds at 30 fps
sniffTime = 30 * 3; // 3 seconds at 30 fps

// Start by setting the pause timer
alarm[0] = pauseTime;
