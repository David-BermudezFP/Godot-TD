extends Node2D

#PLANTA
var shroomish = preload("res://Escenas/Stages/Stage_planta_shroomish.tscn")
var breloom = preload("res://Escenas/Stages/Stage_planta_Breloom.tscn")
var exeggcutor = preload("res://Escenas/Stages/Stage_planta_Exeggcutor.tscn")
#AGUA
var psyduck = preload("res://Escenas/Stages/Stage_agua_psyduck.tscn")
var golduck = preload("res://Escenas/Stages/Stage_agua_golduck.tscn")
var wailord = preload("res://Escenas/Stages/Stage_agua_Wailord.tscn")
#FUEGO
var growlite = preload("res://Escenas/Stages/Stage_fuego_growlite.tscn")
var arcanine = preload("res://Escenas/Stages/Stage_fuego_arcanine.tscn")
var camerupt = preload("res://Escenas/Stages/Stage_fuego_Camerupt.tscn")
#NORMAL
var rattata = preload("res://Escenas/Stages/Stage_normal_ratata.tscn")
var raticate = preload("res://Escenas/Stages/Stage_normal_ratikate.tscn")
var snorlax = preload("res://Escenas/Stages/Stage_normal_Snorlax.tscn")


var tempPath

func _on_cronómetro_timeout() -> void:
	Game.increase_score(1)

func _on_3s_timeout() -> void:
	add_child(psyduck.instantiate())
	add_child(growlite.instantiate())
	add_child(shroomish.instantiate())
	add_child(rattata.instantiate())

func _on_4s_timeout() -> void:
	add_child(growlite.instantiate())


func _on_10s_timeout() -> void:
	pass
