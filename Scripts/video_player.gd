extends VideoPlayer

var current_video;
var A_video;
var B_video;
var opening = "res://Videos/opening.webm"
var bad_end;
var scenario_num;
var option_chosen;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bad_end = false;
	current_video = get_stream();
	A_video = Global.A_Video.url;
	B_video = Global.B_Video.url;
	scenario_num = 1;
	option_chosen = 0;
	play();


func video_set_up() -> void:
	pass;
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_ButtonA_pressed():
	if (!is_playing()):
		option_chosen = "A";
		bad_end = Global.A_Video.badEnd;
		#Global.A_Video.url = "res://Videos/scenario_" + str(scenario_num) + string_end;
		stream = load(Global.A_Video.url); # Replace with function body.
		current_video = get_stream();
		play();


func _on_ButtonB_pressed():
	if (!is_playing()):
		option_chosen = "B";
		bad_end = Global.B_Video.badEnd;
		stream = load(B_video); # Replace with function body.
		current_video = get_stream();
		play(); # Replace with function body.
		


func _on_VideoPlayer_finished():
	if(bad_end):
		get_tree().change_scene("res://MainMenu.tscn"); # Replace with function body.
	else:
		scenario_num = scenario_num + 1;
