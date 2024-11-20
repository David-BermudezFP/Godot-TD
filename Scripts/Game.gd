extends Node

var health = 100
var gold = 30
var timescore = 0

func decrement_health(damage: int):
	health -= damage
	if health <= 0:
		get_tree().change_scene_to_file("res://Escenas/UI/main_menu.tscn")
		health = 100
		gold = 30
		
func increase_score(points: int):
	timescore += points
