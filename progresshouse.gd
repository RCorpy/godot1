extends ProgressBar

@onready var timer = %Timer
@onready var enviroment = %enviroment
@onready var label = %Label

func _process(delta):
	if enviroment.isProgressing:
		value = ( enviroment.getTimerTime() - timer.get_time_left() ) / enviroment.getTimerTime() *100
	else:
		label.hide()
