/// @description ON ENTER ALT ROOM
var roomNow = "PLAY_A";
if( ds_list_find_index(lstAltRooms, room) != -1 ){
    roomNow = "PLAY_B";
}

if(roomType != roomNow){
    roomType = roomNow;
    
    //FADE OUT THE SOUND
    audio_sound_gain(playingNow, 0, 2000);
    
    //audio_stop_sound(playingNow);
    
    alarm[0] = 1;
}


