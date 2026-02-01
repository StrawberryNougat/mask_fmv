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
	3 : {
		"A" : {url = "res://Videos/scenario_3_option_A.webm", buttonMessage = "cookie", badEnd = false},
		"B" : {url = "res://Videos/scenario_3_option_B.webm", buttonMessage = "password", badEnd = true}
	},
	4 : {
		"A" : {url = "res://Videos/scenario_4_option_A.webm", buttonMessage = "I don't.", badEnd = false},
		"B" : {url = "res://Videos/scenario_4_option_B.webm", buttonMessage = "The package?", badEnd = true}
	},
	5: {
		"A" : {url = "res://Videos/scenario_5_option_A.webm", buttonMessage = "*Drink it*", badEnd = true},
		"B" : {url = "res://Videos/scenario_5_option_B.webm", buttonMessage = "No Thanks", badEnd = false}
	},
	6 : {
		"A" : {url = "res://Videos/scenario_6_option_A.webm", buttonMessage = "I thought you liked coffee more", badEnd = false},
		"B" : {url = "res://Videos/scenario_6_option_B.webm", buttonMessage = "Hmm okay", badEnd = true}
	},
	7 : {
		"A" : {url = "res://Videos/scenario_7_option_A.webm", buttonMessage = "They’re usually quick…", badEnd = false},
		"B" : {url = "res://Videos/scenario_7_option_B.webm", buttonMessage = "Slow, as usual.", badEnd = true}
	},
	8 : {
		# Finish good ending narration first
		# "A" : {url = "res://Videos/scenario_8_option_A.webm", buttonMessage = "*grab the chair*", badEnd = false},
		"B" : {url = "res://Videos/scenario_8_option_B.webm", buttonMessage = "*grab the Plushie*", badEnd = true}
	}
	
}

func findVideo(scenarioNum: int, optionString: String) -> Dictionary:
	return videos[scenarioNum][optionString];
