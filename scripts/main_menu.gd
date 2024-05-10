extends Control

func _on_new_game_button_pressed():
	print("New Game button was pressed!")
	# TODO: Add logic goto game level scene
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_close_button_pressed():
	# TODO: Add prompt "Do you realy want to exit the game"...
	get_tree().quit()
