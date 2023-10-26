extends CharacterBody2D


const SPEED = 750.0

func _ready():
	position = Vector2(-850.0, 0)
	

func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("up"):
		velocity.y -= SPEED
	elif Input.is_action_pressed("down"):
		velocity.y += SPEED


	move_and_collide(velocity * delta)
	
	
	#def get_axis(up, down):
#
