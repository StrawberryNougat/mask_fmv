extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_visible(false); # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_VideoPlayer_finished():
#	set_text(Global.videos[Global.scenario_num]["B"].buttonMessage);
#	set_visible(true); # Replace with function body.


func _on_ButtonA_pressed():
	set_visible(false); # Replace with function body.


func _on_ButtonB_pressed():
	set_visible(false); # Replace with function body.


func _on_VideoPlayer_pause():
	set_text(Global.videos[Global.scenario_num]["B"].buttonMessage);
	set_visible(true); # Replace with function body.
