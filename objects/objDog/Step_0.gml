/// @description Move, misc. behavior

// Abstracted input
var gettingCalled = false;
if (keyboard_check_pressed(vk_space)) {
	gettingCalled = true;
	// TODO: Play whistle sound
}

// If the player is too far away or is calling you, run to player
// (or if the player is moving and we are in the pausing/alert state)
var closestPlayer = instance_nearest(x, y, objPlayer);
if (gettingCalled || distance_to_object(closestPlayer) > leashRange || (pausing && (closestPlayer.hspeed != 0 || closestPlayer.vspeed != 0))) {
	pointOfInterest = closestPlayer;
	image_index = 0;
	sniffing = false;
	pausing = false;
}

if (!is_undefined(pointOfInterest)) {
	// Move toward point of interest if we are not already within 100px
	if (distance_to_object(pointOfInterest) > pointOfInterest.dogRange) {
		var running = false;
		var hVelocity = walkHVelocity;
		var vVelocity = walkVVelocity;
		if (distance_to_object(pointOfInterest) > poiRunRange) {
			running = true;
			hVelocity = runHVelocity;
			vVelocity = runVVelocity;
		}
		var xDiff = abs(pointOfInterest.x - x);
		var yDiff = abs(pointOfInterest.y - y);
		var vectorRatioX = xDiff / (xDiff + yDiff);
		var vectorRatioY = yDiff / (xDiff + yDiff);
		var vectorSpeed = (vectorRatioX * hVelocity) + (vectorRatioY * vVelocity);
		move_towards_point(pointOfInterest.x, pointOfInterest.y, vectorSpeed);
	} else {
		// Stop when in range and move to the pausing state
		hspeed = 0;
		vspeed = 0;
		pointOfInterest = undefined; // TODO: should remain focused on player sometimes
		pausing = true;
		alarm[0] = pauseTime;
	}
} else {
	// Stop and pick a new point of interest or sniff after some time has passed
	hspeed = 0;
	vspeed = 0;
	if (!pausing && !sniffing) {
		var chance = random(1);
		if (chance < 0.5) {
			// Start sniffing
			sniffing = true;
			image_index = 1;
			alarm[1] = sniffTime;
		} else if (chance < 0.8) {
			// The player is more interesting
			pointOfInterest = instance_nearest(x, y, objPlayer);
		} else {
			// The nearest POI is more interesting
			pointOfInterest = instance_nearest(x, y, objPointOfInterest);
		}
	}
}
