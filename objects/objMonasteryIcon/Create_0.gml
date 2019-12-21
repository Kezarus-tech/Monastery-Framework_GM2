event_inherited();
///INIT
text = "";
subText =   "MONASTERY#" + 
            "FRAMEWORK#" +
            "#Click the icon to donate";

guiSprite = sprButtonModalShadow;
guiSpritePressed = sprButtonModalShadow;

pressedOffset = 0;

///BOTTOM LEFT OF THE SCREEN & SIZE
var hh = surface_get_height(application_surface);

icon = sprMonasteryIcon;
offset = 20;

x = offset;
y = hh - sprite_get_height(icon) - offset;


width = sprite_get_width(icon);
height = sprite_get_height(icon);


