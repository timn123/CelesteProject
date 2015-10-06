//init_stderr(path);
//Initializes the standard error output. If debug.
//path determines where the output file goes.

if (global.DEBUG)
{
    global.STDERR = file_text_open_write(argument0 + current_date() + ".txt");
    file_text_write_string(global.STDERR, os_info());
    file_text_writeln(global.STDERR);
}
