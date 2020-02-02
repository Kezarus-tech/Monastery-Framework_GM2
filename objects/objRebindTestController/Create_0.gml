text = "";

//DETECT GAMEPAD
global.connected_gamepad = 0;
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
   if( gamepad_is_connected(i) ){
	   alert("Controle", i);
	   global.connected_gamepad = i;
   }
}

var _gpMap = gamepad_get_mapping(global.connected_gamepad);
show_debug_message("Gamepad Mapping = " + _gpMap);




var key_map = ds_map_create();
var key_map_alt = ds_map_create();
var arr;

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = ord("W");
ds_map_add(key_map, PlayerActionEnum.Up, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = ord("A");
ds_map_add(key_map, PlayerActionEnum.Left, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = ord("S");
ds_map_add(key_map, PlayerActionEnum.Down, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = ord("D");
ds_map_add(key_map, PlayerActionEnum.Right, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = vk_space;
ds_map_add(key_map, PlayerActionEnum.Shoot, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = vk_shift;
ds_map_add(key_map, PlayerActionEnum.Run, arr);

global.key_mapping = key_map;


arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = vk_up;
ds_map_add(key_map_alt, PlayerActionEnum.Up, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = vk_left;
ds_map_add(key_map_alt, PlayerActionEnum.Left, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = vk_down;
ds_map_add(key_map_alt, PlayerActionEnum.Down, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
arr[KeyDataEnum.Value] = vk_right;
ds_map_add(key_map_alt, PlayerActionEnum.Right, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
arr[KeyDataEnum.Value] = mb_left;
ds_map_add(key_map_alt, PlayerActionEnum.Shoot, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
arr[KeyDataEnum.Value] = mb_right;
ds_map_add(key_map_alt, PlayerActionEnum.Run, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
arr[KeyDataEnum.Value] = MB_WHEEL_UP;
ds_map_add(key_map_alt, PlayerActionEnum.WeaponPrev, arr);

arr = array_create(2, -1);
arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
arr[KeyDataEnum.Value] = MB_WHEEL_DOWN;
ds_map_add(key_map_alt, PlayerActionEnum.WeaponNext, arr);


global.key_mapping_alt = key_map_alt;