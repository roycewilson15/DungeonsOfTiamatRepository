/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0B8537DD
/// @DnDArgument : "obj" "object_player"
/// @DnDSaveInfo : "obj" "object_player"
var l0B8537DD_0 = false;
l0B8537DD_0 = instance_exists(object_player);
if(l0B8537DD_0)
{

}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 245473B9
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "sprite" "heart"
/// @DnDArgument : "number" "global.playerhp"
/// @DnDSaveInfo : "sprite" "heart"
var l245473B9_0 = sprite_get_width(heart);
var l245473B9_1 = 0;
for(var l245473B9_2 = global.playerhp; l245473B9_2 > 0; --l245473B9_2) {
	draw_sprite(heart, 0, 30 + l245473B9_1, 30);
	l245473B9_1 += l245473B9_0;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1915DF68
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)$(13_10)"
/// @description Insert description here
// You can write your code in this editor