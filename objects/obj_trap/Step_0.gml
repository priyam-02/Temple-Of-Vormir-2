if (global.trapdoorOpened != global.trapdoorOpenedPrevState) {
	if(global.trapdoorOpened) {
		obj_button3.visible = false;
		//inst_7167F0FD.y += 128;
		inst_24B922B1.y -= 256;
		inst_513D94D7.y -= 256;
	} else {
		obj_button3.visible = true;
		//inst_7167F0FD.y -= 128;
		inst_24B922B1.y += 256;
		inst_513D94D7.y += 256;
	}
}