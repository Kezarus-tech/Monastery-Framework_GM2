/// @description rebind_keys_initialize()
// This function initialises a list with all controlls, it's names and default values
// It is called on objInitializer->Create Event
function rebind_keys_initialize() {
	// MAP ALL YOUR PlayerActionEnum HERE
	global.lstControls = ds_list_create();
	var controls = global.lstControls;
	//ARRAY FOLLOWS THE ControlsEnum
	//PlayerAction, Name, DefaultInputType, DefaultValue, AlternativeInputType, AlternativeValue
	ds_list_add(controls, [PlayerActionEnum.Up,			"Up",				InputTypeEnum.Keyboard, ord("W"),	InputTypeEnum.Keyboard, vk_up ]);
	ds_list_add(controls, [PlayerActionEnum.Left,		"Left",				InputTypeEnum.Keyboard, ord("A"),	InputTypeEnum.Keyboard, vk_left ]);
	ds_list_add(controls, [PlayerActionEnum.Down,		"Down",				InputTypeEnum.Keyboard, ord("S"),	InputTypeEnum.Keyboard, vk_down ]);
	ds_list_add(controls, [PlayerActionEnum.Right,		"Right",			InputTypeEnum.Keyboard, ord("D"),	InputTypeEnum.Keyboard, vk_right ]);
	ds_list_add(controls, [PlayerActionEnum.Shoot,		"Shoot",			InputTypeEnum.Keyboard, vk_space,	InputTypeEnum.Mouse,	mb_left ]);
	ds_list_add(controls, [PlayerActionEnum.Run,		"Run",				InputTypeEnum.Keyboard, vk_shift,	InputTypeEnum.Mouse,	mb_right ]);
	ds_list_add(controls, [PlayerActionEnum.Weapon1,	"Weapon1",			InputTypeEnum.Nothing,  -1,			InputTypeEnum.Nothing,	-1 ]);
	ds_list_add(controls, [PlayerActionEnum.Weapon2,	"Weapon2",			InputTypeEnum.Nothing,  -1,			InputTypeEnum.Nothing,	-1 ]);
	ds_list_add(controls, [PlayerActionEnum.Weapon3,	"Weapon3",			InputTypeEnum.Nothing,  -1,			InputTypeEnum.Nothing,	-1 ]);
	ds_list_add(controls, [PlayerActionEnum.WeaponNext, "Weapon Next",		InputTypeEnum.Nothing,  -1,			InputTypeEnum.Mouse,	MB_WHEEL_UP ]);
	ds_list_add(controls, [PlayerActionEnum.WeaponPrev, "Weapon Previous",	InputTypeEnum.Nothing,  -1,			InputTypeEnum.Mouse,	MB_WHEEL_DOWN ]);

	rebind_keys_load();
}