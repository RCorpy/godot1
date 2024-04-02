extends CollisionShape2D

@onready var timer = %Timer
@onready var enviroment = %enviroment
@onready var label = %Label



func _on_interacting_body_entered(body):
	if body.has_method("interact"):
		print("body entered", body) # Replace with function body.
		timer.startTimer(enviroment.getTimerTime())
		enviroment.isProgressing = true
		label.show()
		
		
