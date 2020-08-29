event_inherited();

#region GET ANYKEY
if(mouseOver || dontNeedToBeOnFocus){
    if( keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any) ){
        if( waitForAnykey ){
            waitForAnykey = false;
            textToDisplay = "";
            alarm[1] = 1;
            textTimerNow = textTimer;
        }else{
            textTimerNow = clamp(textTimerNow/2, 1, 10000);
            alarm[1] = 1;
        }
    }
}
#endregion