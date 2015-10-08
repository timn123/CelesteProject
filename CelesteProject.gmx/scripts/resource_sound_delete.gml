//resource_sound_delete();
//Deletes all sounds. Bai Bai.

stderr_write("Deleting sounds.");
for (i = 0; i < global.resource_sound_count; i += 1)
{
    if (global.resource_sound_list[i] != snd_missing)//So we don't try to delete spr_missing multiple times
       audio_destroy_stream(global.resource_sound_list[i]);
}

audio_destroy_stream(snd_missing);
stderr_write("Sounds Deleted.");
