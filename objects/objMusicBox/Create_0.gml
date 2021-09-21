/// @description LOAD MUSIC ON ARRAY

//put as many musics as you like here

playlistA[0] = musicChant;
//playlistA[1] = musicChant;
//playlistA[2] = musicChant;
//playlistA[3] = musicChant;


playlistB[0] = musicChantDeep;
//playlistB[1] = musicChant;
//playlistB[2] = musicChant;
//playlistB[3] = musicChant;

//add your alternative rooms here
lstAltRooms = ds_list_create();
ds_list_add(lstAltRooms, roomButtons);


roomType = "PLAY_A"; //PLAY_A, PLAY_B

alarm[0] = 1;
playingNow = -1;
musicVolume = 1;

