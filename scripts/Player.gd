extends CharacterBody2D

# Speed of the character
var speed = 80
@onready var sprite = $AnimatedSprite2D

func _physics_process(delta):
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
		
	# Get the direction vector based on input
	var direction = Input.get_vector("left", "right", "up", "down")
	direction = direction.normalized()
	velocity = direction * speed

	move_and_slide()
	
	# Check if the player is moving
	if direction != Vector2.ZERO:
		# Play the "walk" animation
		sprite.play("walk")
	else:
		# Play the "idle" animation
		sprite.play("idle")

func Unpause():
	process_mode = Node.PROCESS_MODE_INHERIT
