event_inherited();
///SETUP POSITION OFFSET
x = 10;
y = 10;

///CREATE BUTTONS
var offset = 20;
var btnWidth = 200;
var btnHeight = 40;
var btnOffset = 5;

width = (offset*2) + btnWidth;
height = (offset*2) + btnHeight + ((btnHeight+btnOffset) * 4);

var wx = x + offset;
var wy = y + offset;
var inst;

inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Pause", call_pause);

wy += btnHeight + btnOffset;
inst = instance_create(wx, wy, btnModalOK);
inst.width = btnWidth;
inst.height = btnHeight;

wy += btnHeight + btnOffset;
inst = instance_create(wx, wy, btnModalOkCancel);
inst.width = btnWidth;
inst.height = btnHeight;

wy += btnHeight + btnOffset;
inst = instance_create(wx, wy, btnModalManyOptions);
inst.width = btnWidth;
inst.height = btnHeight;

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Main Menu", func_room_goto, roomMainFramework);


///CREATE OBJECTS
instance_create(x + (width div 2), y + height + 115, objOrbital);

//SETUP
var appWidth = surface_get_width(application_surface);
var appHeight = surface_get_height(application_surface);

var wWidth = 300;
var wx = appWidth-wWidth-10;
var wy = 10;
var inst = instance_create(wx, 10, objGUIContentPanelText);
inst.width = wWidth;
inst.height = wWidth;

inst.text = 
    "Who's the Game Designer? When you play a video game, it's very easy to pinpoint what a 3D modeler or animator contributes to the game experience. " + 
    "Same goes for the sound engineer and music composer. Of course, the game wouldn't even run were it not for the thousands of lines of code written by the programmers. " + 
    "But what about the not-so-obvious components? For example, in a first-person shooter, who determines how many rounds a gun will hold? "+
    "Or how powerful each round will be? Or the rate of fire? Or reload time? In an adventure game, who causes the red door to open when the red key is used? "+
    "In an RPG, who sets up the skill trees and economy? Last of all, and most important, who is responsible for making the game fun to play? Relax, "+
    "your intelligence is not being insulted, but what you're going to see is the Game Design role is arguably the most diverse in the industry."+
    "#" +
    "A Game Designer's main function is to conceive the elements of gameplay, and to turn those elements into an interactive experience for the player to enjoy. " + 
    "This requires a robust skill-set both technically and artistically, because the Designer uses level editing software to build levels in a game, "+
    "as well as high-level programming (scripting) to make things happen in the game world. What you must understand is that a Game Designer does not "+
    "show up to work and simply write stories, character bios, and game ideas. Brainstorming and coming up with cool concepts are what a Designer does 10% of the time. "+
    "The remaining 90% is comprised of the execution of the ideas; and, in order to make this happen, the Designer utilizes numerous artistic and technical tools.";


wy += wWidth + 10;
inst = instance_create(wx, wy, objTweek9Slices);
inst.width = wWidth;
inst.height = appHeight - wWidth - (10 * 3);




///CREATE CONTENT PANEL
var offset = 10;

var borderOffset = 10;
var elementWidth = 65;
var elementHeight = 40;
var elementOffset = 5;
var scrollWidth = 15;

var content = instance_create(x+width+offset, y, objGUIContentPanelObject);
content.borderOffset = borderOffset;
content.elementOffset = elementOffset;
content.scrollWidth = scrollWidth;
content.elementWidth = elementWidth;
content.elementHeight = elementHeight;

content.width = (borderOffset*2)+scrollWidth+(5*(elementWidth+elementOffset))-elementOffset;
content.height = (borderOffset*2)+(11*(elementHeight+elementOffset))-elementOffset;

var btn;
var text = "";
for (var i=0; i<100; i++){
    text = "B" + string(i);
    btn = gui_create_button(-100, -100, elementWidth, elementHeight, text, alert, text);
    
    ds_list_add(content.lstContent, btn);
}






