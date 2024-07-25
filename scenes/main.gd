extends Control

var score := 0

var highScore := 0

var setTime := 2

var timeLeft := setTime


func _ready():
	$TimeLeftLabel.text = "Time Left:" + str(timeLeft)
	$GameOverScreen.hide()
	$HighScoreLabel.text = "High Score: " + str(highScore)


## SCORE BUTTON CODE 
func _on_increase_score_button_pressed():
	#if timeLeft > 0:
		score += 1
		$ScoreLabel.text = "Score: " + str(score)
		# cause phone to vibrate for 125 ms on touching button
		Input.vibrate_handheld(125) 

func _on_increase_score_button_button_up():
	#if timeLeft > 0:
		$IncreaseScoreButton.add_theme_font_size_override("font_size", 75)

func _on_increase_score_button_button_down():
	$IncreaseScoreButton.add_theme_font_size_override("font_size", 73)



## TIMER/CORE FUNCTIONALITY CODE
func _on_time_left_timer_timeout():
	if timeLeft > 1:
		timeLeft -= 1
		$TimeLeftLabel.text = "Time Left: " + str(timeLeft)
	elif timeLeft < 0:
		$TimeLeftLabel.text = "Time Left: 0"
		if score > highScore:
			highScore = score
			$HighScoreLabel.text = "High Score: " + str(highScore)
			$GameOverScreen/Panel/WinLossLabel.add_theme_font_size_override("font_size", 50)
			$GameOverScreen/Panel/WinLossLabel.text = "You set a new high score!"
		else:
			$GameOverScreen/Panel/WinLossLabel.text = "Nice Try!"
		$TimeLeftTimer.stop()
		$GameOverScreen.show()
	else:
		timeLeft -= 1
		$TimeLeftLabel.text = "Time Left: 0"
		$IncreaseScoreButton.disabled = true



func _on_play_again_button_pressed():
	$ClickSound.play()
	Input.vibrate_handheld(125) 
	$IncreaseScoreButton.disabled = false
	$GameOverScreen.hide()
	timeLeft = setTime
	$TimeLeftLabel.text = "Time Left: " + str(timeLeft)
	$TimeLeftTimer.start()
	score = 0
	
	
	


func _on_play_again_button_button_down():
	$GameOverScreen/Panel/PlayAgainButton/PlayAgainLabel.add_theme_font_size_override("font_size", 45)


func _on_play_again_button_button_up():
	$GameOverScreen/Panel/PlayAgainButton/PlayAgainLabel.add_theme_font_size_override("font_size", 47)


func _on_exit_app_button_button_down():
	$GameOverScreen/Panel/ExitAppButton/ExitAppLabel.add_theme_font_size_override("font_size", 45)


func _on_exit_app_button_button_up():
	$GameOverScreen/Panel/ExitAppButton/ExitAppLabel.add_theme_font_size_override("font_size", 47)


func _on_exit_app_button_pressed():
	$ClickSound.play()
	Input.vibrate_handheld(125) 
	get_tree().change_scene_to_file("res://scenes/home_screen.tscn")
