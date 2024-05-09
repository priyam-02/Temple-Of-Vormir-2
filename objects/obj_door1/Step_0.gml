/// @description Insert description here
// You can write your code in this editor

if (global.door1Opened != global.door1OpenedPrevState) {
	if(global.door1Opened) {
		obj_button.visible = false;
		//inst_52624582.y += 62;
		inst_6C0DA497.y -= 128;
		inst_16AB230D.y += 128;
		//inst_32948CB4.y += 128;
		//inst_33547F56.y += 128;
	} else {
		obj_button.visible = true;
		//inst_52624582.y -= 62;
		inst_6C0DA497.y += 128;
		inst_16AB230D.y -= 128;
		//inst_32948CB4.y -= 128;
		//inst_33547F56.y -= 128;
	}
}




