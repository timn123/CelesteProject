//resource_sound_load(fname);
//Gets a file and loads it into the game as a resource with the origin at (xorigin, yorigin)
//Returns the resource loaded.

stderr_write("Adding Sound from '" + string(argument0));
if (string_lower(file_get_extension(argument0)) == ".ogg")
    global.resource_sound_list[global.resource_sound_count] = audio_create_stream(argument0);
else
{
    stderr_error("Sound '" + argument0 + "' is not in Ogg Vorbis format.");
    global.resource_sound_list[global.resource_sound_count] = snd_missing;
}

if (global.resource_sound_list[global.resource_sound_count] == null)//Check if sound is there
{
    stderr_error("Sound '" + string(argument0) + "' did not load properly.");
    global.resource_sound_list[global.resource_sound_count] = snd_missing;
}

global.resource_sound_count += 1;//Increment the counter
return global.resource_sound_list[global.resource_sound_count - 1];//-1 so we get the sound we just added
