event_inherited();


#region ORGANIZE COMPONENTS
var inst = noone;

var wx = x + borderOffset;
var wy = y + borderOffset;
linesMax = 0;

for(var i=0; i<ds_list_size(lstContent); i++){
    inst = lstContent[| i];
    
    inst.x = wx;
    inst.y = wy;
    inst.contentLine = linesMax;
    
    wx += elementOffset + elementWidth;
    if( wx+elementWidth > x+width-borderOffset-scrollWidth ){
        wy += elementOffset + elementHeight;
        wx = x + borderOffset;
        linesMax += 1;
    }
}
#endregion

//HOW MANY LINE FIT IN THE PANEL?
var linesInPanel = (height-(borderOffset*2)+elementOffset) div ( elementHeight+elementOffset );
linesMax -= linesInPanel-1;
linesMax = max(0, linesMax);


///CREATE SCROLLBAR

scrollBar = gui_create_slider(
                x+width-scrollWidth, y,
                scrollWidth, height, scrollWidth-2, scrollWidth, 
                0, linesMax);

