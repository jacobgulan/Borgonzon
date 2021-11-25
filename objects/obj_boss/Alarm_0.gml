/// @description Initiate endgame
// You can write your code in this editor
instance_deactivate_all(true);
instance_create_layer(x, y, "Instances", obj_exitButton)
instance_create_layer(x, y, "Instances", obj_resumeButton)
instance_create_layer(x, y, "Instances", obj_drawEndScreen)