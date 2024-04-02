extends ProgressBar

@onready var timer = %Timer
@onready var enviroment = %enviroment

func _process(delta):
	if enviroment.isProgressing:
		value = (1-timer.get_time_left())/enviroment.getTimerTime()
		print(enviroment.isProgressing)
	
