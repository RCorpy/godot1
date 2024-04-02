extends Timer

@onready var label = %Label

func startTimer(time):
	start(time)

func _ready():
	autostart = false

func _physics_process(delta):
	label.text = str(roundf(get_time_left()))
