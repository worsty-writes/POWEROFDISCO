global._shakein = false;
sprite_index = spr_playerdead;
game_set_speed(60, gamespeed_fps);
audio_stop_sound(snd_slowdown);
layer_set_visible(layer_get_id("tint5"), false);
show_debug_message("AlARM IS DONE!")