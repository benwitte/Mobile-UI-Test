extends Control




func _on_play_button_button_down():
	$PlayButton/PlayLabel.add_theme_color_override("font_color", Color("#d3d3d3"))
	$PlayButton/PlayLabel.add_theme_font_size_override("font_size", 80)
	
	  


func _on_play_button_button_up():
	$PlayButton/PlayLabel.add_theme_color_override("font_color", Color("FFFFFF"))  
	$PlayButton/PlayLabel.add_theme_font_size_override("font_size", 85)


func _on_play_button_pressed():
	$ClickSound.play()
	Input.vibrate_handheld(125) 
	get_tree().change_scene_to_file("res://scenes/main.tscn")


	
	#queue_free()
	#get_tree().quit()


func _on_exit_button_button_down():
	$ExitButton/ExitLabel.add_theme_color_override("font_color", Color("#d3d3d3"))
	$ExitButton/ExitLabel.add_theme_font_size_override("font_size", 80)



func _on_exit_button_button_up():
	$ExitButton/ExitLabel.add_theme_color_override("font_color", Color("FFFFFF"))  
	$ExitButton/ExitLabel.add_theme_font_size_override("font_size", 85)


func _on_exit_button_pressed():
	$ClickSound.play()
	Input.vibrate_handheld(125) 
	get_tree().quit()
