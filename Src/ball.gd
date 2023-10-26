extends CharacterBody2D

var SPEED = 600.0

func _ready():
	position = Vector2(0, 0)

	velocity.x = [-1, 1][randi() % 2]
	velocity.y =  [-0.8, 0.8][randi() % 2]
	
func _physics_process(delta):
	var collision_object = move_and_collide(velocity * SPEED * delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.get_normal())
