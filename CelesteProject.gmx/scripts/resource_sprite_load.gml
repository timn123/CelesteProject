//resource_sprite_load(fname, xorigin, yorigin);
//Gets a file and loads it into the game as a resource with the origin at (xorigin, yorigin)
//Returns the resource loaded.

stderr_write("Adding Sprite from '" + string(argument0) + "' with origin (" + string(argument1) + ", " + string(argument2) + ") with ID " + string(global.resource_sprite_count));
global.resource_sprite_list[global.resource_sprite_count] = sprite_add(argument0, 1, false, false, argument1, argument2);

if (global.resource_sprite_list[global.resource_sprite_count] == null)//Check if sprite is there
{
    stderr_error("Sprite '" + string(argument0) + "' did not load properly.");
    global.resource_sprite_list[global.resource_sprite_count] = spr_missing;
}

global.resource_sprite_count += 1;//Increment the counter
return global.resource_sprite_list[global.resource_sprite_count - 1];//-1 so we get the sprite we just added
