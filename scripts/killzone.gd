extends Area2D

@onready var timer = $Timer

func _on_body_entered(_body):
	print("Player fall of the map!")
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout():
	# Reset game
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
