extends CharacterBody2D

const SPEED = 300.0
var targetDirection = Vector2(0,0)
@onready var animated_sprite_2d = $AnimatedSprite2D


func _input(event):
	if Input.is_action_pressed("clicked"):
		targetDirection = Vector2(event.position)
		animated_sprite_2d.animation = "moving"

func interact():
	print("knight entered")

func _physics_process(delta):

	if (velocity.length() > 0.01):
		animated_sprite_2d.animation = "moving"
	else:
		animated_sprite_2d.animation = "default"
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.is_action_pressed("clicked")

	if direction:
		var targetVector = get_local_mouse_position()
		
		if targetVector.length()>10:
			velocity = targetVector.normalized() * SPEED
			animated_sprite_2d.flip_h =targetVector.x < 0
		else:
			velocity = Vector2(0,0)
	else:
	
		velocity = Vector2(0,0)

		

	move_and_slide()
