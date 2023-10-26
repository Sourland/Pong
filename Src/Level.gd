extends Node2D

var playerScore = 0
var opponentScore = 0



func _on_left_body_entered(body):
	$Ball.position = Vector2.ZERO
	opponentScore += 1


func _on_right_body_entered(body):
	$Ball.position = Vector2.ZERO
	playerScore += 1

func _process(delta):
	$PlayerScore.text = str(playerScore)
	$OpponentScore.text = str(opponentScore)
