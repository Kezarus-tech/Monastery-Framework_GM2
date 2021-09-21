event_inherited();

#region UPDATE BY MOUSE WHEEL UP DOWN
if(mouseOver){
    if( mouse_wheel_down() ){
		linesNow += 1;
        changed = true;
    }
    
    if( mouse_wheel_up() ){
		linesNow -= 1;
        changed = true;
    }
    
    if(changed){
        linesNow = clamp( linesNow, 0, linesMax );
        scrollBar.valueUpdate = linesNow;
    }
}
#endregion


#region UPDATE BY THE SCROLLBAR
if(instance_exists(scrollBar)){
    if( linesNow != scrollBar.valueFinal ){
        changed = true;
        linesNow = round(scrollBar.valueFinal);
    }
}
#endregion


#region IF CHANGED
if(changed){
    changed = false;

    var inst;
    for(var i=0; i<ds_list_size(lstContent); i++){
        inst = lstContent[| i];
        
        instance_activate_object(inst);
		inst.visible = false;
        
		inst.y = inst.yOriginal + (-heightIncrement*linesNow);
        
        if( inst.y < y ){
            instance_deactivate_object(inst);
        }else if( inst.y + inst.height > y + height ){
            instance_deactivate_object(inst);
        }else{
			with(inst){
				visible = true;
				event_perform(ev_step, ev_step_normal);
			}
		}
    }
}
#endregion


