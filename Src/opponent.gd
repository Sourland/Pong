extends CharacterBody2D


const SPEED = 400.0
var ball


func _ready():
	position = Vector2(850.0, 0)
	ball = get_parent().get_node("Ball")
	

func _physics_process(delta):
	var velocity = Vector2.ZERO


	move_and_collide(Vector2(0, get_opponent_direction()) * SPEED * delta)
	
	
func get_opponent_direction():
	if abs(ball.position.y - position.y) > 25 and abs(ball.position.x - position.x) < 960:
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0
	
	#def get_axis(up, down):
#
