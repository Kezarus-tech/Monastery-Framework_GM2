/// @description string_split( text, delimiter )
/// @param text - the text to be proccessed
/// @param delimiter - the 1 character to separete the array
function string_split(argument0, argument1) {
	var wText = argument0;
	var wDelimiter = argument1;
	var wSlot = 0;
	var wArray;
	var wTextPart = "";

	//when it have no delimiters return himself in a array
	if( string_count(wDelimiter, wText) == 0 ){
	    wArray[0] = wText;
	}else{
	    for (var i=1; i<(string_length(wText)+1); i++) {
	        var currStr = string_copy(wText, i, 1);
	        if (currStr == wDelimiter) {
	            wArray[wSlot] = wTextPart; //add this split to the array of all splits
	            wSlot++;
	            wTextPart = "";
	        } else {
	            wTextPart = wTextPart + currStr;
	            wArray[wSlot] = wTextPart;
	        }
	    }
	}
    
	return wArray;
}
