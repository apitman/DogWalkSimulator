/// generateLevel()

// Don't place anything before 400 on the x-axis because the player needs to start with room to breathe
var overallMinX = 600;
var overallMaxX = 9900;
var objectDepth = 200;
var nextX = 10;
var nextY = 10;

// Create fire hydrants
var fireXSpacingMin = 600;
var fireXSpacingMax = 1600;
var fireYStatic = 480;
// Re-initialize nextX and nextY
nextX = overallMinX + irandom_range(fireXSpacingMin, fireXSpacingMax);
nextY = fireYStatic;
while (nextX <= overallMaxX) {
	instance_create_depth(nextX, nextY, objectDepth, objHydrant);
	nextX = nextX + irandom_range(fireXSpacingMin, fireXSpacingMax);
}

// Create garbages
var garbageXSpacingMin = 600;
var garbageXSpacingMax = 1600;
var garbageYMin = 400;
var garbageYMax = 700;
// Re-initialize nextX and nextY
nextX = overallMinX + irandom_range(garbageXSpacingMin, garbageXSpacingMax);
nextY = irandom_range(garbageYMin, garbageYMax);
while (nextX <= overallMaxX) {
	instance_create_depth(nextX, nextY, objectDepth, objGarbage);
	nextX = nextX + irandom_range(garbageXSpacingMin, garbageXSpacingMax);
	nextY = irandom_range(garbageYMin, garbageYMax);
}

// Create bones
var boneXSpacingMin = 600;
var boneXSpacingMax = 1600;
var boneYMin = 600;
var boneYMax = 720;
// Re-initialize nextX and nextY
nextX = overallMinX + irandom_range(boneXSpacingMin, boneXSpacingMax);
nextY = irandom_range(boneYMin, boneYMax);
while (nextX <= overallMaxX) {
	instance_create_depth(nextX, nextY, objectDepth, objBone);
	nextX = nextX + irandom_range(boneXSpacingMin, boneXSpacingMax);
	nextY = irandom_range(boneYMin, boneYMax);
}

// Create tennis balls
var ballXSpacingMin = 600;
var ballXSpacingMax = 1600;
var ballYMin = 70;
var ballYMax = 500;
// Re-initialize nextX and nextY
nextX = overallMinX + irandom_range(ballXSpacingMin, ballXSpacingMax);
nextY = irandom_range(ballYMin, ballYMax);
while (nextX <= overallMaxX) {
	instance_create_depth(nextX, nextY, objectDepth, objTennisBall);
	nextX = nextX + irandom_range(ballXSpacingMin, ballXSpacingMax);
	nextY = irandom_range(ballYMin, ballYMax);
}
