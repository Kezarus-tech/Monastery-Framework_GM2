/// @description rebind_keys_initialize()

// This function initialises a list with all controlls and it's names
// It is called on objInitializer->Create Event

// MAP ALL YOUR PlayerActionEnum HERE
global.lstControls = ds_list_create();
var controls = global.lstControls;
ds_list_add(controls, [PlayerActionEnum.Left, "Left"]);
ds_list_add(controls, [PlayerActionEnum.Right, "Right"]);
ds_list_add(controls, [PlayerActionEnum.Up, "Up"]);
ds_list_add(controls, [PlayerActionEnum.Down, "Down"]);
ds_list_add(controls, [PlayerActionEnum.Shoot, "Shoot"]);
ds_list_add(controls, [PlayerActionEnum.Run, "Run"]);
ds_list_add(controls, [PlayerActionEnum.Weapon1, "Weapon1"]);
ds_list_add(controls, [PlayerActionEnum.Weapon2, "Weapon2"]);
ds_list_add(controls, [PlayerActionEnum.Weapon3, "Weapon3"]);
ds_list_add(controls, [PlayerActionEnum.WeaponNext, "Weapon Next"]);
ds_list_add(controls, [PlayerActionEnum.WeaponPrev, "Weapon Previous"]);


var key_map = ds_map_create();
var key_map_alt = ds_map_create();
var arr;

// DEFAULT PRIMARY CONTROLLS
// THEY ARE STORED AT global.key_mapping 
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



// DEFAULT ALTERNATIVE CONTROLLS
// THEY ARE STORED AT global.key_mapping_alt 
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