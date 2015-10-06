//resource_sprite_delete();
//Deletes all sprites. Bai Bai.

stderr_write("Deleting sprites.");
for (i = 0; i < global.resource_sprite_count; i += 1)
{
    if (global.resource_sprite_list[i] != spr_missing)//So we don't try to delete spr_missing multiple times
       sprite_delete(global.resource_sprite_list[i]);
}

sprite_delete(spr_missing);
stderr_write("Sprites Deleted.");
