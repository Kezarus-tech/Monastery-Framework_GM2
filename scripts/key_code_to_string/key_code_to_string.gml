/// @description key_code_to_string( code )
/// @param code : constants or keyboard strings

// convert a constant or a keyboard key to a string. Ex.: vk_space becomes Space
function key_code_to_string(argument0) {
	var code = argument0;
	var result = "";
	if (code >= 48 && code <= 90) {
	    result = string_lettersdigits(chr(code));
	} else {
	    switch (code) {
	        case vk_enter: result = "Enter"; break;
	        case vk_left: result = "Left"; break;
	        case vk_right: result = "Right"; break;
	        case vk_up: result = "Up"; break;
	        case vk_down: result = "Down"; break;
	        case vk_escape: result = "Escape"; break;
	        case vk_space: result = "Space"; break;
	        case vk_shift: result = "Shift"; break;
	        case vk_control: result = "Control"; break;
	        case vk_alt: result = "Alt"; break;
	        case vk_backspace: result = "Backspace"; break;
	        case vk_tab: result = "Tab"; break;
	        case vk_home: result = "Home"; break;
	        case vk_end: result = "End"; break;
	        case vk_delete: result = "Delete"; break;
	        case vk_insert: result = "Insert"; break;
	        case vk_pageup: result = "Page Up"; break;
	        case vk_pagedown: result = "Page Down"; break;
	        case vk_pause: result = "Pause"; break;
	        case vk_printscreen: result = "Printscreen"; break;
	        case vk_f1: result = "F1"; break;
	        case vk_f2: result = "F2"; break;
	        case vk_f3: result = "F3"; break;
	        case vk_f4: result = "F4"; break;
	        case vk_f5: result = "F5"; break;
	        case vk_f6: result = "F6"; break;
	        case vk_f7: result = "F7"; break;
	        case vk_f8: result = "F8"; break;
	        case vk_f9: result = "F9"; break;
	        case vk_f10: result = "F10"; break;
	        case vk_f11: result = "F11"; break;
	        case vk_f12: result = "F12"; break;
	        case vk_numpad0: result = "Numpad 0"; break;
	        case vk_numpad1: result = "Numpad 1"; break;
	        case vk_numpad2: result = "Numpad 2"; break;
	        case vk_numpad3: result = "Numpad 3"; break;
	        case vk_numpad4: result = "Numpad 4"; break;
	        case vk_numpad5: result = "Numpad 5"; break;
	        case vk_numpad6: result = "Numpad 6"; break;
	        case vk_numpad7: result = "Numpad 7"; break;
	        case vk_numpad8: result = "Numpad 8"; break;
	        case vk_numpad9: result = "Numpad 9"; break;
	        case vk_multiply: result = "Numpad *"; break;
	        case vk_divide: result = "Numpad /"; break;
	        case vk_add: result = "Numpad +"; break;
	        case vk_subtract: result = "Numpad -"; break;
	        case vk_decimal: result = "Numpad ."; break;

			case 165: result = "Alt"; break;
			case 164: result = "Left Alt"; break;
			case 163: result = "Ctrl"; break;
			case 162: result = "Left Ctrl"; break;
			case 192: result = "'"; break;
			case 189: result = "Minus"; break;
			case 187: result = "Plus"; break;
			case 221: result = "["; break;
			case 220: result = "]"; break;
			case 188: result = "<"; break;
			case 190: result = ">"; break;
		
			case mb_left: result = "Left Mouse"; break;
			case mb_middle: result = "Middle Mouse"; break;
			case mb_right: result = "Right Mouse"; break;
			case MB_WHEEL_UP: result = "Wheel Up"; break;
			case MB_WHEEL_DOWN: result = "Wheel Down"; break;
		
	        case gp_face1: result = "A Button"; break;
	        case gp_face2: result = "B Button"; break;
	        case gp_face3: result = "X Button"; break;
	        case gp_face4: result = "Y Button"; break;
	        case gp_shoulderr: result = "Right Shoulder"; break;
	        case gp_shoulderl: result = "Left Shoulder"; break;
	        case gp_shoulderrb: result = "Right Trigger"; break;
	        case gp_shoulderlb: result = "Left Trigger"; break;
	        case gp_padu: result = "D-Pad Up"; break;
	        case gp_padd: result = "D-Pad Down"; break;
	        case gp_padl: result = "D-Pad Left"; break;
	        case gp_padr: result = "D-Pad Right"; break;
	        case gp_stickl: result = "Left Stick"; break;
	        case gp_stickr: result = "Right Stick"; break;
	        case gp_select: result = "Select"; break;
	        case gp_start: result = "Start"; break;
	    }
	}

	return string(result);
}