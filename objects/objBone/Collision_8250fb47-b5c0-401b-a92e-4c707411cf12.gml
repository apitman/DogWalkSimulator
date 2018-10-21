/// @description Affect dog, destroy bone

other.sniffing = true; // actually eating, but I'm not making a new state for that
other.sprite_index = spriteDogSniffing;
other.image_speed = other.sniffAnimSpeed;
other.pointOfInterest = undefined;
other.alarm[1] = other.sniffTime;
other.alarm[3] = -1;

instance_destroy(self);
