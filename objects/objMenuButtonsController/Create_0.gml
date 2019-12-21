/// @description CREATE PANELS

instance_create(10, 10, pnlMenuButtons);

instance_create(260, 10, pnlMenuCheckbox);

var inst = instance_create(10, 414, objGUIDialogBox);

inst.width = 800
inst.height = 118;

inst.text = "###"+
    "Hey. Don't ever let somebody tell you, you can't do something. " +
    "#Not even me. All right? ##" +
    "You got a dream? " +
    "#You gotta protect it. ##" +
    "People can't do something themselves, they want to tell you you can't do it. ###" +
    "You want something?         " +
    "#Go get it! " +
    "#Period!";


instance_destroy();
