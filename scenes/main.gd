extends Control

var score := 0


func _on_increase_score_button_pressed():
	score += 1
	$ScoreLabel.text = "Score: " + str(score)
	# cause phone to vibrate for 125 ms on touching button
	Input.vibrate_handheld(125) 
