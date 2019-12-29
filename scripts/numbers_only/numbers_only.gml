/// @description numbers_only( number, default );
/// @param number - as string
/// @param default

//var result = string_digits(argument0);

var result = "";

//remove all that is not number, minus(-) or dot(.)
var size = string_length(argument0);
for(var i=1; i<=size; i++){
	var char = string_char_at(argument0, i);
	
	switch (char) {
		case ".": case "-":
		case "0": case "1": case "2": case "3": case "4":
		case "5": case "6": case "7": case "8": case "9":
			result += char;
	}
}

if( result != "" ){
	return real(result);
}else{
	return argument1;
}
