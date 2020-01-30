event_inherited();


#region ORGANIZE COMPONENTS
var inst = noone;

for(var i=0; i<ds_list_size(lstContent); i++){
    inst = lstContent[| i];
    
	//THE IMPORTANT BIT IS TO SET THIS VARIABLE HERE AT EACH OBJECT
	inst.yOriginal = inst.y;
	
	if(instanceTop == noone){
		instanceTop = inst;
	}else if(inst.y < instanceTop.y){
		instanceTop = inst;
	}
	
	if(instanceBottom == noone){
		instanceBottom = inst;
	}else if(inst.y+inst.height > instanceBottom.y+instanceBottom.height){
		instanceBottom = inst;
	}
		
}
#endregion


//HOW MANY LINES FIT IN THE PANEL?
linesMax = ((instanceBottom.y - instanceTop.y)-(height-y)+instanceBottom.height) / heightIncrement;
linesMax = ceil(linesMax);


///CREATE SCROLLBAR
scrollBar = gui_create_slider(
                x+width-scrollWidth, y,
                scrollWidth, height, scrollWidth-2, scrollWidth, 
                0, linesMax);
