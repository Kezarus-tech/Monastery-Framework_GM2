/// @description to_string( real_number );
/// @param real_number - as real
// string() gives you 2 decimal places, this function will return all places if they exists
function to_string(argument0) {
	if( is_string(argument0) ){ 
		return argument0; 
	}else if(is_real(argument0)){
		var realNumber = argument0;

		var fraction = abs(frac(realNumber));
		if(fraction > 0){
			var zeroes = "";
			while(frac(fraction) > 0){
				fraction *= 10;
				if(fraction < 1){
					zeroes += "0";
				}
			}
	
			var signal = "";
			if(argument0<0){
				signal = "-";
			}
	
			return signal + string(floor(abs(realNumber-frac(argument0)))) + 
					"." + zeroes + string(floor(fraction));
		}else{
			return string(realNumber);
		}
	}else{
		return string(argument0);
	}

	/*
	//TEST
	var a = "";

	a = to_string(123);
	a = to_string(-123);
	a = to_string(123.456);
	a = to_string(0.456);
	a = to_string(-123.456);
	a = to_string(.456);
	a = to_string(-0.456);
	a = to_string(0.0001);
	a = to_string(0.0101);
	a = to_string(0.1010);
	*/
}