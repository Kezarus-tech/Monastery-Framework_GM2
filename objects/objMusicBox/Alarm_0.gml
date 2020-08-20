/// @description LOOP ALARM
alarm[0] = 60;

///PLAY MUSICS

if( !audio_is_playing(playingNow) || audio_sound_get_gain(playingNow) == 0 ){
    audio_stop_sound(playingNow);
    var toPlay;
    
    if( ds_list_find_index(lstAltRooms, room) == -1 ){
        if(playingNow == -1){
            toPlay = playlistA[0]; //PLAY THEME MUSIC, THE FIRST ONE
        }else{
            toPlay = playlistA[ irandom_range(0, array_length(playlistA)-1) ];
        }
    }else{
        toPlay = playlistB[ irandom_range(0, array_length(playlistB)-1) ];
    }
    
    playingNow = audio_play_sound(toPlay, 1, false);
    audio_sound_gain(playingNow, musicVolume, 500);
}




