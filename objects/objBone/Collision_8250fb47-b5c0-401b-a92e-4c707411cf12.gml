/// @description Affect dog, destroy bone

other.sniffing = true; // actually eating, but I'm not making a new state for that
other.image_index = 1;
other.pointOfInterest = undefined;
other.alarm[1] = other.sniffTime;

instance_destroy(self);
