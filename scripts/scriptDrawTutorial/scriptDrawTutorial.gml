/// drawTutorial()
var xCamOffset = -1 * camera_get_view_x(view_camera[0]);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw boxes for the text
var prevColor = draw_get_color();
draw_set_color(c_ltgray);
draw_roundrect(xCamOffset + 10, 100, xCamOffset + 410, 200, false); // Box 1
draw_roundrect(xCamOffset + 100, 250, xCamOffset + 500, 350, false); // Box 2
draw_roundrect(xCamOffset + 650, 300, xCamOffset + 1150, 400, false); // Box 2point1
draw_roundrect(xCamOffset + 1200, 150, xCamOffset + 2000, 250, false); // Box 3
draw_roundrect(xCamOffset + 2450, 200, xCamOffset + 2950, 400, false); // Box 4
draw_roundrect(xCamOffset + 3350, 350, xCamOffset + 3850, 450, false); // Box 5

// Draw outlines for the boxes
draw_set_color(c_black);
draw_roundrect(xCamOffset + 10, 100, xCamOffset + 410, 200, true); // Box 1
draw_roundrect(xCamOffset + 100, 250, xCamOffset + 500, 350, true); // Box 2
draw_roundrect(xCamOffset + 650, 300, xCamOffset + 1150, 400, true); // Box 2point1
draw_roundrect(xCamOffset + 1200, 150, xCamOffset + 2000, 250, true); // Box 3
draw_roundrect(xCamOffset + 2450, 200, xCamOffset + 2950, 400, true); // Box 4
draw_roundrect(xCamOffset + 3350, 350, xCamOffset + 3850, 450, true); // Box 5

draw_set_color(prevColor);

// Draw the text
draw_set_font(fontSmall);
var text1 = "Welcome to Dog Walk Simulator!\nThis is your dog, Herbert.\nHe needs to go for a walk!";
draw_text(xCamOffset + 210, 150, text1); // Text 1
var text2 = "He tends to follow you,\nbut sometimes he gets distracted.";
draw_text(xCamOffset + 300, 300, text2); // Text 2
var text2point1 = "If you move far enough away from him,\nthe leash will pull and he will focus\non you again.";
draw_text(xCamOffset + 900, 350, text2point1); // Text text2point1
var text3 = "Try to get Herbert to pick up any bones and tennis balls you find.\nMove close to them and wait, and he will eventually see them.";
draw_text(xCamOffset + 1600, 200, text3); // Text 3
var text4 = "Make sure you avoid garbage.\nHe loves it, but it will make him sick!\nPress the Space bar to call him\nif he is moving toward something bad.";
draw_text(xCamOffset + 2700, 300, text4); // Text 4
var text5 = "Cross the finish line to get to the next level!";
draw_text(xCamOffset + 3600, 400, text5); // Text 5
draw_set_font(fontNormal);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
