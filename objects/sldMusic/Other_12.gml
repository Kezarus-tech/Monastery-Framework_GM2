event_inherited();
///SET VOLUME
var volumeNow = valueFinal/100;
audio_group_set_gain(audiogroup_default, volumeNow, 1);

with(objMusicBox){
    musicVolume = volumeNow;
}


