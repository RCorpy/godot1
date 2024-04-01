extends CollisionShape2D


func _on_interacting_body_entered(body):
	if body.has_method("interact"):
		print("body entered", body) # Replace with function body.
