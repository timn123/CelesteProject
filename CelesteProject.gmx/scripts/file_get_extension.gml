//file_get_extension(fname);
//returns the file extension of the given file.
//will return ".err"

_length = string_length(argument0);
_dot = null;
_ext = null;

for (i = 0; i < _length; i += 1)//Find location of the dot
{
    if (string_char_at(argument0, i) == '.')
    {
        _dot = i;
        break;
    }
}

if (_dot == null)
{
    stderr_error("Cannot find extension of file '" + fname + "'.");
    _ext = ".err";
}

for (i = _dot; i < _length; i += 1)
{
    _ext += string_char_at(argument0, i);
}

if (string_length(_ext) < 1)
{
    stderr_error("File '" + fname + "' has no valid extension.");
    _ext = ".err";
}



return _ext;
