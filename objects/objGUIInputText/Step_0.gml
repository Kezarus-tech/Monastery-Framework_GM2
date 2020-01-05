event_inherited();

#region SAFE GUARD, text is always a string and not number
if(!is_string(text)){
	text = to_string(text);
}
#endregion

#region HOVER & FOCUS & BLUR
if( enabled ){

    if( mouse_check_button_released(mb_left) ){
        if( mouseOver ){
            onFocus = true;
			if(selectAllOnClick){
				cursorPosition = string_length(text)+1;
				cursorSelectPosition = 1;
			}
        }else{
            if(onFocus){
                onFocus = false;
                event_perform(ev_other, ev_user0); // execute on blur
            }
        }
    }

}else{
    image_blend = c_gray;
}
#endregion

#region SPRITE & BLEND

if(!onFocus){
    sprite_index = guiSprite;
}else{
    image_blend = c_white;
    sprite_index = guiSpriteFocus;
}

#endregion


#region ON FOCUS KEYBOARD PRESS
if(onFocus){
    if( keyTimer <= 0 ){
        //Shift
        if( keyboard_check(vk_shift) ){
            if(cursorSelectPosition == -1){
                cursorSelectPosition = cursorPosition;
            }
        }else{
            //Not holding shift
            if( keyboard_check(vk_left) || keyboard_check(vk_right) || 
                keyboard_check(vk_home) || keyboard_check(vk_end)
            ){
                //Cancel selection
                cursorSelectPosition = -1;
            }
        }
    
        // Cursor
        if(keyboard_check(vk_left)){ cursorPosition-=1; keyTimer = keyTimerLimit; }
        if(keyboard_check(vk_right)){ cursorPosition+=1; keyTimer = keyTimerLimit; }
        if(keyboard_check(vk_home)){ cursorPosition=1; }
        if(keyboard_check(vk_end)){ cursorPosition=string_length(text)+1; }

        // Ctrl+V
        if( keyboard_check(vk_control) && keyboard_check(ord("V")) ){
            keyTimer = keyTimerLimit;
            if( clipboard_has_text() ){
                keyboard_string = clipboard_get_text();
            }
        }
        
        // Not on selected text mode
        if(cursorSelectPosition == -1){
            // Backspace
            if(keyboard_check(vk_backspace)){
                keyTimer = keyTimerLimit;
                
                text = string_delete(text, cursorPosition-1, 1);
                cursorPosition-=1;
            }
            
            // Delete
            if(keyboard_check(vk_delete)){
                keyTimer = keyTimerLimit;
                text = string_delete(text, cursorPosition, 1);
            }
        }else{
            // Selected text mode
            
            // Control Key
            if( keyboard_check(vk_control) ){
                // Ctrl+C || Ctrl+X
                if( keyboard_check(ord("C")) || keyboard_check(ord("X")) ){
                    keyTimer = keyTimerLimit;
    
                    var subString = "";
                    if( cursorPosition > cursorSelectPosition ){
                        subString = string_copy(text, cursorSelectPosition, cursorPosition-cursorSelectPosition);
                    }else{
                        subString = string_copy(text, cursorPosition, cursorSelectPosition-cursorPosition);
                    }
                    clipboard_set_text(subString);
                }
            }
            
            // Delete selected text
            if( keyboard_check(vk_delete) || keyboard_check(vk_backspace) || keyboard_string != "" ||
                ( keyboard_check(vk_control) && keyboard_check(ord("X")) ) ||
                ( keyboard_check(vk_control) && keyboard_check(ord("V")) )
            ){
                keyTimer = keyTimerLimit;
                if( cursorPosition > cursorSelectPosition ){
                    text = string_delete(text, cursorSelectPosition, cursorPosition-cursorSelectPosition);
                    cursorPosition = cursorSelectPosition;
                }else{
                    text = string_delete(text, cursorPosition, cursorSelectPosition-cursorPosition);
                }
            
                cursorSelectPosition = -1;
            }
        }
    }
    
    cursorPosition = clamp(cursorPosition, 1, string_length(text)+1);
    keyTimer = clamp(keyTimer-1, 0, 1000);
    
    
    //Set typed text
    if(keyboard_string != ""){
        var wText = keyboard_string;
        var maxLength = width - (textOffset*2);
        
        draw_set_font(fontType);
        if( string_width(string_hash_to_newline(text+wText))*fontScale <= maxLength &&
            string_length(text+wText) <= textMaxCharacters
        ){
            text = string_insert(wText, text, cursorPosition);
            cursorPosition += string_length(wText);
        }
        keyboard_string = "";
    }
}

#endregion