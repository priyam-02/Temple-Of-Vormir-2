/// @description Insert description here
// You can write your code in this editor

if (global.door2Opened != global.door2OpenedPrevState) {
	if(global.door2Opened) {
		obj_button2.visible = false;
		//inst_7167F0FD.y += 128;
		inst_4752A69D.x += 64;
		inst_354A1E66.x -= 64;
	} else {
		obj_button2.visible = true;
		//inst_7167F0FD.y -= 128;
		inst_4752A69D.x -= 64;
		inst_354A1E66.x += 64;
	}
}




