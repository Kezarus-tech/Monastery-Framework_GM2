/// @description CREATE YOUR GLOBALS AND ENUMS HERE

///LOAD SOUND ALWAYS ON
audio_group_load(AlwaysOn);

#region INI FILE
fileName = "CONFIG.INI";
ini_open(fileName);

var value = ini_read_real("prefs", "sound", 100);
audio_group_set_gain(AlwaysOn, value/100, 1);

value = ini_read_real("prefs", "music", 100);
musicVolume = value/100;
audio_group_set_gain(audiogroup_default, value/100, 1);
var inst = instance_create(-1000, -1000, objMusicBox);
inst.musicVolume = musicVolume;

ini_close();
#endregion

#region CREATE ESSENTIAL OBJECTS

instance_create(-1000, -1000, objMouseGui);

#endregion


///GO TO MAIN ROOM
room_goto(roomMainFramework);

