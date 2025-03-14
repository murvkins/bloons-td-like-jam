if (other.life > 0 && other.id != bullet_inst && self.rFreezetimer == 0) {
	alarm[1] = 1; //self destruct
	bullet_inst = other.id;
	if (other.life == 1) {
		instance_destroy(other);
	} else {
		other.life -= 1;
	}	
}

