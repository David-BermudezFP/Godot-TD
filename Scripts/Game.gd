extends Node

var health = 100
var gold = 1000
var timescore = 0
var username
@onready var music = $AudioStreamPlayer

func decrement_health(damage: int):
	health -= damage
	if health <= 0:
		game_over()
		get_tree().change_scene_to_file("res://Escenas/UI/main_menu.tscn")
		health = 100
		gold = 30
		
func increase_score(points: int):
	timescore += points

func game_over():
	$PathSpawner/Score.stop()
	
func load_username_from_disk():
	var FILE_NAME = "save/user_data.json"
	if FileAccess.file_exists(FILE_NAME):
		var dataFile = FileAccess.open(FILE_NAME, FileAccess.READ)
		var data = JSON.parse_string(dataFile.get_as_text())
		dataFile.close()
		if typeof(data) == TYPE_DICTIONARY:
			print("username loaded correctly")
			username = data.username
		else:
			printerr("Corrupted data!")
	else:
		printerr("No saved data!")
