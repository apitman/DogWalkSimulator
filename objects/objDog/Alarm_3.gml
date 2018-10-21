/// @description Chance to get distracted, rearms itself

if (!gettingCalled && random(1) < distractionChance) {
	pointOfInterest = instance_nearest(x, y, objPointOfInterest);
} else {
	alarm[3] = distractionTime;
}
