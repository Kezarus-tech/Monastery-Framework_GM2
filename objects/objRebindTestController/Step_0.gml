
code = check_input_button();

text = key_code_to_string(code[KeyDataEnum.Value]) + " (" + string(code[KeyDataEnum.Value]) + ")";


text += "\nLeft: " + string(check_key(PlayerActionEnum.Left));
text += "\nRight: " + string(check_key(PlayerActionEnum.Right));
text += "\nUp: " + string(check_key(PlayerActionEnum.Up));
text += "\nDown: " + string(check_key(PlayerActionEnum.Down));
text += "\nShoot: " + string(check_key(PlayerActionEnum.Shoot));
text += "\nRun: " + string(check_key(PlayerActionEnum.Run));
text += "\nWeaponNext: " + string(check_key(PlayerActionEnum.WeaponNext));
text += "\nWeaponPrev: " + string(check_key(PlayerActionEnum.WeaponPrev));
