extends Timer

@onready var label = %Label

func _ready():
	autostart = true

func _physics_process(delta):
	label.text = "yes"
