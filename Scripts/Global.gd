extends Node

var A_Video = {url = "res://Videos/scenario_1_option_A_captions.webm", buttonMessage = "Not much, how are you?", badEnd = true, length = 3};

var B_Video = {url = "res://Videos/scenario_1_option_B_captions.webm", buttonMessage = "That's not my name...", badEnd = false, length = 12};

var scenario_num;

var videos = {
	1 : {
		"A": {url = "res://Videos/scenario_1_option_A_captions.webm", buttonMessage = "Not much, how are you?", badEnd = true, length = 3},
		"B": {url = "res://Videos/scenario_1_option_B_captions.webm", buttonMessage = "That's not my name...", badEnd = false, length = 12}
	},
	2 : {
		"A" : {url = "res://Videos/scenario_2_option_A_captions.webm", buttonMessage = "*ignore him*", badEnd = true, length = 20},

		"B" : {url = "res://Videos/scenario_2_option_B_captions.webm", buttonMessage = "Good morning!", badEnd = false, length = 20}
	},
	3 : {
		"A" : {url = "res://Videos/scenario_3_option_A_captions.webm", buttonMessage = "cookie", badEnd = false, length = 5},
		"B" : {url = "res://Videos/scenario_3_option_B_captions.webm", buttonMessage = "password", badEnd = true, length = 6}
	},
	4 : {
		"A" : {url = "res://Videos/scenario_4_option_A_captions.webm", buttonMessage = "I don't.", badEnd = false, length = 66},
		"B" : {url = "res://Videos/scenario_4_option_B_captions.webm", buttonMessage = "The package?", badEnd = true, length = 8}
	},
	5: {
		"A" : {url = "res://Videos/scenario_5_option_A_captions.webm", buttonMessage = "*Drink it*", badEnd = true, length = 19},
		"B" : {url = "res://Videos/scenario_5_option_B_captions.webm", buttonMessage = "No Thanks", badEnd = false, length = 4}
	},
	6 : {
		"A" : {url = "res://Videos/scenario_6_option_A_captions.webm", buttonMessage = "I thought you liked coffee more", badEnd = false, length = 7},
		"B" : {url = "res://Videos/scenario_6_option_B_captions.webm", buttonMessage = "Hmm okay", badEnd = true, length = 19}
	},
	7 : {
		"A" : {url = "res://Videos/scenario_7_option_A_captions.webm", buttonMessage = "They are usually quick…", badEnd = false, length = 33},
		"B" : {url = "res://Videos/scenario_7_option_B_captions.webm", buttonMessage = "Slow, as usual.", badEnd = true, length = 20}
	},
	8 : {
		# Finish good ending narration first
		"A" : {url = "res://Videos/scenario_8_option_A_captions.webm", buttonMessage = "*grab the chair*", badEnd = false, length = 36},
		"B" : {url = "res://Videos/scenario_8_option_B_captions.webm", buttonMessage = "*grab the Plushie*", badEnd = true, length = 4}
	}
	
}

func findVideo(scenarioNum: int, optionString: String) -> Dictionary:
	return videos[scenarioNum][optionString];
