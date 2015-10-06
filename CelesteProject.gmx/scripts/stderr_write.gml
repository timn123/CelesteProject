//sterr_write(message);
//Writes a degub message to stderr.

if (global.DEBUG)
{
   file_text_write_string(global.STDERR, "> " + argument0);
   file_text_writeln(global.STDERR);
}
