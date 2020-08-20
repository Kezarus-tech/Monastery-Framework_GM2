/// @description --PUT YOUR COMMANDS ON THIS EVENT--

/* 
put them on your inherited buttons and 
call this parent event with event_inherited();
to get the sounds and other behaviors
*/


#region SOUND

var snd = audio_play_sound(soundClick, 10, false);
audio_sound_pitch(snd, random_range(0.9, 1.1));

#endregion

#region EXECUTE SCRIPT

if( targetScript != noone ){
    var argsSize = array_length(targetScriptArgs);
    
    if( argsSize == 0 ){
        script_execute(targetScript);
    }else if( argsSize == 1 ){
        script_execute(targetScript, targetScriptArgs[0]);
    }else if( argsSize == 2 ){
        script_execute(targetScript, targetScriptArgs[0], targetScriptArgs[1]);
    }else if( argsSize == 3 ){
        script_execute(targetScript, targetScriptArgs[0], targetScriptArgs[1], targetScriptArgs[2]);
    }else if( argsSize == 4 ){
        script_execute(targetScript, targetScriptArgs[0], targetScriptArgs[1], targetScriptArgs[2], targetScriptArgs[3]);
    }else if( argsSize == 5 ){
        script_execute(targetScript, targetScriptArgs[0], targetScriptArgs[1], targetScriptArgs[2], targetScriptArgs[3], targetScriptArgs[4]);
    }else if( argsSize >= 6 ){
        script_execute(targetScript, targetScriptArgs[0], targetScriptArgs[1], targetScriptArgs[2], targetScriptArgs[3], targetScriptArgs[4], targetScriptArgs[5]);
    }
}

#endregion
