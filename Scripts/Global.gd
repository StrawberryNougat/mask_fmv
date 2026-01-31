extends Node

var A_Video = {url = "res://Videos/scenario_1_option_A.webm", buttonMessage = "Not much, how are you?", badEnd = true};

var B_Video = {url = "res://Videos/scenario_1_option_B.webm", buttonMessage = "That's not my name...", badEnd = false};

var scenario_num;

var videos = {
	1 : {
		"A": {url = "res://Videos/scenario_1_option_A.webm", buttonMessage = "Not much, how are you?", badEnd = true},
		"B": {url = "res://Videos/scenario_1_option_B.webm", buttonMessage = "That's not my name...", badEnd = false}
	},
	2 : {
		"A" : {url = "res://Videos/scenario_2_option_A.webm", buttonMessage = "*ignore him*", badEnd = true},

		"B" : {url = "res://Videos/scenario_2_option_B.webm", buttonMessage = "Good morning to you too as well!", badEnd = false}
	},
}

func findVideo(scenarioNum: int, optionString: String) -> Dictionary:
	return videos[scenarioNum][optionString];
