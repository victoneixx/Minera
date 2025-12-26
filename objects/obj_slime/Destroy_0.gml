var _pitch = random_range(0.5, 1.5);
audio_play_sound(snd_die, 0, 0, 1, 0, _pitch);
instance_create_layer(x, y, layer, obj_meat);