event_inherited();

#region UNMARK GROUPS & MARK ME
var myGroup = group;
with(objGUIRadiobutton){
    if( myGroup == group ){
        buttonPressed = false;
    }
}

buttonPressed = true;

#endregion