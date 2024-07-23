extends Control


func _on_play_button_button_down():
	$PlayButton/PlayLabel.add_theme_color_override("font_color", Color("fcff00"))  


func _on_play_button_button_up():
	$PlayButton/PlayLabel.add_theme_color_override("font_color", Color("00FFFF"))  
