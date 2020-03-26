/// @description REBIND
// check the modalAnswer, check rules and rebinds the key

alert("rebindKey", rebindKey); //PlayerActionEnum.[]
alert("rebindAlternate", rebindAlternate); //true / false
alert("rebindCode[KeyDataEnum.InputType]", string(rebindCode[KeyDataEnum.InputType])); //what type was clicked
alert("rebindCode[KeyDataEnum.Value]", rebindCode[KeyDataEnum.Value]); //what key was pressed


alert("REBIND");


//CHECK FOR REPEATED KEY

//REBIND

//WHICH TO REBIND?
var keyMap = global.key_mapping;
if( rebindAlternate ){
	keyMap = global.key_mapping_alt;
}


