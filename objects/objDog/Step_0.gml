/// @description Move, misc. behavior

if (is_undefined(pointOfInterest)) {
	// Move toward player if we are not already within 100px
	if (distance_to_object(objPlayer) > playerWalkRange) {
		var running = false;
		var hVelocity = walkHVelocity;
		var vVelocity = walkVVelocity;
		if (distance_to_object(objPlayer) > playerRunRange) {
			running = true;
			hVelocity = runHVelocity;
			vVelocity = runVVelocity;
		}
		var xDiff = abs(objPlayer.x - x);
		var yDiff = abs(objPlayer.y - y);
		var vectorRatioX = xDiff / (xDiff + yDiff);
		var vectorRatioY = yDiff / (xDiff + yDiff);
		var vectorSpeed = (vectorRatioX * hVelocity) + (vectorRatioY * vVelocity);
		move_towards_point(objPlayer.x, objPlayer.y, vectorSpeed);
	} else {
		hspeed = 0;
		vspeed = 0;
	}
} else {
	// Move toward point of interest if we are not already within 64
	if (distance_to_point(pointOfInterest.x, pointOfInterest.y) > poiRange) {
		var xDiff = abs(pointOfInterest.x - x);
		var yDiff = abs(pointOfInterest.y - y);
		var vectorRatioX = xDiff / (xDiff + yDiff);
		var vectorRatioY = yDiff / (xDiff + yDiff);
		var vectorSpeed = (vectorRatioX * walkHVelocity) + (vectorRatioY * walkVVelocity);
		move_towards_point(pointOfInterest.x, pointOfInterest.y, vectorSpeed);
	} else {
		hspeed = 0;
		vspeed = 0;
	}
}
