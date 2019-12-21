event_inherited();
///CUSTOMIZEABLE VARIABLES
text = "TEXT" // text displayed and to be edited
textMaxCharacters = 1000; //limit the amout of characters
width = 200;
height = 50;
enabled = true;

guiSprite = sprInputText;
guiSpriteFocus = sprInputText;
depth = 0; //always above panels

fontType = fntStandard;
fontScale = 1;
fontColor = c_yellow;
textOffset = 10;

selectionOffset = 10;


///INTERNAL VARS
onFocus = false;

cursorPosition = 1;
cursorSelectPosition = -1;

//REGULATES THE SPEED OF KEY STROKES
keyTimer = 0;
keyTimerLimit = 10;

origin = GUI_TOPLEFT; // ALWAYS TOP LEFT

