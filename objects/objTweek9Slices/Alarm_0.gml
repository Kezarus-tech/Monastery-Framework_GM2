event_inherited();
///CREATE SLIDERS & REPOSITION
offset = 10;

width -= offset;
height -= offset;

scrollBarH = gui_create_slider(
                x+offset, y,
                width, offset, offset, offset-2, 
                offset, width, 150
            );

scrollBarV = gui_create_slider(
                x, y+offset,
                offset, height, offset-2, offset,
                offset, height, 50
            );

//START
x += offset;
y += offset;



