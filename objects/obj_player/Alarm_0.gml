global._shakein = false;
sprite_index = spr_playerdead;
game_set_speed(60, gamespeed_fps);
audio_stop_sound(snd_slowdown);
_damaged = false
_collision = false;
show_debug_message("AlARM IS DONE!")