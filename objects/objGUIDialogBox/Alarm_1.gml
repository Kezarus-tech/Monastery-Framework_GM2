/// @description TYPEWRITER EFFECT & SOUND

if(textIndex <= string_length(text)){
    draw_set_font(fontType);
    if( string_height(string_hash_to_newline(textToDisplay+"o")) > height-(textOffset*2) ){
        waitForAnykey = true;
    }else{
        textIndex += 1;
        alarm[1] = textTimerNow;
        textToDisplay += string_copy(text, textIndex, 1);

        //PLAY SOUND
        audio_play_sound(sound, 10, false);
    }
}



