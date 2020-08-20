event_inherited();

#region DEFINE THE TEXT ARRAY

draw_set_font(fontType);

fontHeight = string_height(string_hash_to_newline("A"));
maxLines = (height-(textOffset*2)) div fontHeight;

var wSlot = 0;
var currString = "";
var currChar = "";

var lastSkipLine = 0;
var currStringIndex = 1;


for(var i=1; i<=string_length(text); i++){
    currChar = string_copy(text, i, 1);

    if( currChar == "#" ){
        wSlot++;
        arrText[wSlot] = "";
        wSlot++;
        currString = "";
        currStringIndex = 1;
    }else if( string_width(string_hash_to_newline(currString)) < width-(textOffset*2)-scrollWidth ){
        currStringIndex += 1;
        currString += currChar;
        arrText[wSlot] = currString;
        
        if(currChar == " " || currChar == "-"){
            lastSkipLine = currStringIndex;
        }
    }else{ //TO THE NEXT LINE!
        
		
		//TO JAPANESE AND CHINESE CHARACTERS THAT DON'T HAVE SPACES BETWEEN WORDS
		if(global.language_font_family == "JAPANESE" || global.language_font_family == "CHINESE"){
			//arrText[wSlot] already assigned in the upper if
			wSlot++;

	        currString = currChar;
	        currStringIndex = string_length(currString);
		}else{
			currString += currChar;
			
	        arrText[wSlot] = string_copy(currString, 1, lastSkipLine-1);
	        wSlot++;

	        currString = string_copy(currString, lastSkipLine, string_length(currString)-lastSkipLine+1);
	        currStringIndex = string_length(currString);
		}
    }
}
#endregion




#region CREATE SCROLLBAR
scrollBar = gui_create_slider(
                x+width-scrollWidth, y,
                scrollWidth, height, scrollWidth-2, scrollWidth, 
                0, array_length(arrText)-maxLines);

#endregion
