/// @description Allow leashSnap sound again

// Reset leash snap sound trigger flag
if (distance_to_object(instance_nearest(x, y, objPlayer)) < leashRange) {
	playedLeashSnapSound = false;
} else {
	alarm[4] = 30 * 0.5; // check again in 0.5 seconds
}
