//resource_sound_init()
//Initializes sound loading.
//Creates a list for all sounds to go into so they can be properly destroyed upon game end.

global.RESOURCE_MAX_SOUNDS = 255; //Can be changed for later.
global.resource_sound_count = 0; //Used when adding sounds.

stderr_write("Initializing Sounds. Max = " + string(global.RESOURCE_MAX_SOUNDS));

for (i = 0; i < RESOURCE_MAX_SOUNDS; i += 1)//Creates the sound list.
{
    global.resource_sound_list[i] = null;
}

stderr_write("Sounds Initialized.");
