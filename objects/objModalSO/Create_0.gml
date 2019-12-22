/* set the owner window for the dialogs;
the default is the foreground window. */


widget_set_owner(hwnd_main);

// only concerns Linux/x11
if (os_type == os_linux) {
	// set working directory to linux assets subdirectory.
	set_working_directory(working_directory + "/assets/");
}

// set an icon for the dialogs from a *.png file.
widget_set_icon(working_directory + "/icon.png");


/* variant argument types are not supported. use 
string or real where specified in the docs. docs
can be read at http://dialogmodule.weebly.com */


widget_set_caption("DialogModule");
str = show_message("Hello World!");
show_message(string(str));

str = show_message_cancelable("Hello World!");
show_message(string(str));

str = show_question("Yes or no?");
show_message(string(str));

str = show_question_cancelable("Yes, no, or cancel?");
show_message(string(str));

widget_set_caption("Error");
str = show_attempt("Hello World!");
widget_set_caption("DialogModule");
show_message(string(str));

widget_set_caption("Error");
str = show_error("Hello World!", false);
widget_set_caption("DialogModule");
show_message(string(str));

str = get_string("Enter a string:", "Hello World!");
if (str != "") show_message(str);

str = get_password("Enter a string password:", "Hello World!");
if (str != "") show_message(str);

str = get_integer("Enter an integer:", 0);
show_message(string(str));

str = get_passcode("Enter an integer passcode:", 0);
show_message(string(str));

filter = "Sprite Images (*.png *.gif *.jpg *.jpeg)|*.png;*.gif;*.jpg;*.jpeg|Background Images (*.png)|*.png|All Files (*.*)|*.*";

str = get_open_filename(filter, "Select a File");
if (str != "") show_message(str);

str = get_open_filename_ext(filter, "Select a File", "", "Open Ext");
if (str != "") show_message(str);

str = get_open_filenames(filter, "Select Files");
if (str != "") show_message(str);

str = get_open_filenames_ext(filter, "Select Files", "", "Open Ext");
if (str != "") show_message(str);

str = get_save_filename(filter, "Untitled.png");
if (str != "") show_message(str);

str = get_save_filename_ext(filter, "Untitled.png", "", "Save As Ext");
if (str != "") show_message(str);

str = get_directory("");
if (str != "") show_message(str);

str = get_directory_alt("Select Directory Alt", "");
if (str != "") show_message(str);

str = get_color(c_red);
show_message(string(str));

// this is kinda dumb tbh
if (os_type == os_macosx)
    title = "Colors Ext";
else
    title = "Color Ext";

str = get_color_ext(c_red, title);
show_message(string(str));


instance_destroy();
