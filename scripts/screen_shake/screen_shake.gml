/// @description screen_shake(amount, frequency, duration)
/// @param amount: pixels displacement
/// @param frequency: in steps, how frequent the screen will shake
/// @param duration: in steps, for how many steps it will shake
function screen_shake(argument0, argument1, argument2) {

	// Don't forget in the room that you want to shake:
	// 1 - On Views snipet
	// 2 - Enable use of views
	// 3 - Visible when room starts

	var inst = noone;

	if( !instance_exists(objShake) ){
	    inst = instance_create(0, 0, objShake);
	}else{
	    inst = instance_find(objShake, 0);
	}

	with(inst){
	    amount += argument0;    
	    frequency = argument1;
	    durationMax = argument2;
	    alarm[1] = argument2;
	}

}
