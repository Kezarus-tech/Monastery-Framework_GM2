/// @description chance( percentage )
/// @param  percentage 
// returns true if below the percentage
// ex.: chance(0.3) returns true 30% of the time
function chance(argument0) {
	return argument0 > random(1);
}
