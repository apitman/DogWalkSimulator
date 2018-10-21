/// @description Move, misc. behavior

// Abstracted input
if (keyboard_check_pressed(vk_space)) {
	gettingCalled = true;
	alarm[2] = obedientTime;
	// TODO: Play whistle sound
}

// If the leash is taught or the player is calling you, always run to player
var closestPlayer = instance_nearest(x, y, objPlayer);
//var followChance = random(1) > 0.25 && is_undefined(pointOfInterest) && pausing && (closestPlayer.hspeed != 0 || closestPlayer.vspeed != 0);
if (gettingCalled || distance_to_object(closestPlayer) > leashRange) {
	pointOfInterest = closestPlayer;
	sprite_index = spriteDog;
	image_speed = walkAnimSpeed;
	sniffing = false;
	pausing = false;
	alarm[0] = -1;
	alarm[1] = -1;
	alarm[3] = -1;
}

// Set alarm for a chance to get distracted when following the player
if (pointOfInterest.object_index == closestPlayer.object_index && alarm[3] <= 0) {
	alarm[3] = distractionTime;
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
		image_speed = walkAnimSpeed;
		move_towards_point(pointOfInterest.x, pointOfInterest.y, vectorSpeed);
	} else if (!gettingCalled) {
		// Stop when in range and move to the pausing state
		hspeed = 0;
		vspeed = 0;
		pointOfInterest = undefined;
		pausing = true;
		alarm[0] = pauseTime;
		alarm[3] = -1;
		image_speed = 0;
		image_index = 0;
	} else {
		// We are in range, but in obedient mode and still want to follow the player
		hspeed = 0;
		vspeed = 0;
		image_speed = 0;
		image_index = 0;
		// If there is a "sitting" image_index, I would use that here
	}
} else {
	// Stop and pick a new point of interest or sniff after some time has passed
	hspeed = 0;
	vspeed = 0;
	if (!pausing && !sniffing) {
		var chance = random(1);
		if (chance < 0.2) {
			// Start sniffing
			sniffing = true;
			sprite_index = spriteDogSniffing;
			image_speed = sniffAnimSpeed;
			alarm[1] = sniffTime;
		} else if (chance < 0.5) {
			// The player is more interesting
			pointOfInterest = instance_nearest(x, y, objPlayer);
		} else {
			// The nearest POI is more interesting
			pointOfInterest = instance_nearest(x, y, objPointOfInterest);
		}
	}
}

// Adjust leash offset based on sprite_index
if (sprite_index == spriteDogSniffing) {
	leashOffsetX = 52;
	leashOffsetY = 50;
} else {
	leashOffsetX = 46;
	leashOffsetY = 38;
}
