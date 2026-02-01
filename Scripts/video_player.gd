extends VideoPlayer

var current_video;
var A_video;
var B_video;
var opening = "res://Videos/opening.webm"
var bad_end;
#var scenario_num;
var option_chosen;
var true_end;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bad_end = false;
	current_video = get_stream();
	A_video = Global.videos[1]["A"];
	B_video = Global.videos[1]["B"];
	true_end = false;
	Global.scenario_num = 1;
	option_chosen = 0;
	play();


func video_set_up() -> void:
	pass;
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_ButtonA_pressed():
	if (!is_playing()):
		A_video = Global.findVideo(Global.scenario_num, "A");
		if A_video.empty():
			return;
		stream = load(A_video.url); # Replace with function body.
		current_video = get_stream();
		play();
		bad_end = A_video.badEnd;
		if(Global.scenario_num == 8):
			true_end = true;
		if(Global.scenario_num < 8 && !bad_end):
			Global.scenario_num += 1;
		


func _on_ButtonB_pressed():
	if (!is_playing()):
		B_video = Global.findVideo(Global.scenario_num, "B");
		if B_video.empty():
			return;
		stream = load(B_video.url);
		current_video = get_stream();
		bad_end = B_video.badEnd; # Replace with function body.
		play(); # Replace with function body.
		if(Global.scenario_num < 8 && !bad_end):
			Global.scenario_num += 1;


func _on_VideoPlayer_finished():
	#if(bad_end && Global.scenario_num < 8):
	#	get_tree().change_scene("res://MainMenu.tscn"); # Replace with function body.
	if(true_end):
		get_tree().change_scene("res://CreditsPage.tscn");
