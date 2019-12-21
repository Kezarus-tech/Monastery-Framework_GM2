/// @description SAVE INI
ini_open(fileName);

ini_write_real("prefs", "music", sldMusic.valueFinal);
ini_write_real("prefs", "sound", sldSound.valueFinal);

ini_close();

