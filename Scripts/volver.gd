extends Button


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas/UI/main_menu.tscn")
	Game.timescore = 0
	Game.health = 50
	Game.gold = 30
