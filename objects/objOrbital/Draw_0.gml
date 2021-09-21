/// @description DRAW CIRCLES

//CENTER CIRCLE
draw_circle_colour(x, y, 30, c_yellow, c_yellow, false);

if(orbitDirection >= 360){
    orbitDirection = 0;
}else{
    orbitDirection += 2;
}

draw_circle_colour(
    x+lengthdir_x(100, orbitDirection), 
    y+lengthdir_y(100, orbitDirection), 
    10, c_blue, c_blue, false);


