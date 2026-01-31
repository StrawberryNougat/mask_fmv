extends VideoPlayer

var current_video;
var A_video;
var B_video;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_video = get_stream();
	A_video = "res://Videos/test1.webm";
	play();


func video_set_up() -> void:
	pass;
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonA_pressed():
	if (!is_playing()):
		stream = load(A_video); # Replace with function body.
		current_video = get_stream();
		play();
