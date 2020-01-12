event_inherited();

#region CUSTOMIZEABLE VARIABLES
text = "TEXT" // text displayed and to be edited
label = ""; // the label put on the left of the input text
labelOffset = 5; //the amount in pixels that the label get offset from the input text
textMaxCharacters = 1000; //limit the amout of characters
width = 200;
height = 50;
enabled = true;

guiSprite = sprInputText;
guiSpriteFocus = sprInputText;
depth = 0; //always above panels

fontType = global.language_font;
fontScale = 1;
fontColor = c_yellow;
textOffset = 10;

selectionOffset = 10;

selectAllOnClick = false;

#endregion


#region INTERNAL VARS
onFocus = false;

cursorPosition = 1;
cursorSelectPosition = -1;

//REGULATES THE SPEED OF KEY STROKES
keyTimer = 0;
keyTimerLimit = 10;

origin = GUI_TOPLEFT; // ALWAYS TOP LEFT

#endregion