//resource_sprite_init()
//Initializes sprite loading.
//Creates a list for all sprites to go into so they can be properly destroyed upon game end.

global.RESOURCE_MAX_SPRITES = 255; //Can be changed for later.
global.resource_sprite_count = 0; //Used when adding sprites.

stderr_write("Initializing Sprites. Max = " + string(global.RESOURCE_MAX_SPRITES));

for (i = 0; i < RESOURCE_MAX_SPRITES; i += 1)//Creates the sprite list.
{
    global.resource_sprite_list[i] = null;
}

stderr_write("Sprites Initialized.");
