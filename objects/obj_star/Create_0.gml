/// @description Initialize
// You can write your code in this editor
upixelH = shader_get_uniform(shd_outline, "pixelH")
upixelW = shader_get_uniform(shd_outline, "pixelW")
textW = texture_get_texel_width(sprite_get_texture(sprite_index, 0))
textH = texture_get_texel_height(sprite_get_texture(sprite_index, 0))
image_speed = 0.5
sprite_collision_mask(self, true, 1, 0, 0, 0, 0, 0, 0);
scr_spawnLocation()