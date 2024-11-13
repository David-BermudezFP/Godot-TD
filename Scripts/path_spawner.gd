extends Node2D

var psyduck = preload("res://Escenas/Stages/Stage_psyduck.tscn")
var rattata = preload("res://Escenas/Stages/Stage_ratata.tscn")
var growlite = preload("res://Escenas/Stages/Stage_growlite.tscn")
var shroomish = preload("res://Escenas/Stages/Stage_shroomish.tscn")

var tempPath


func _on_cronómetro_timeout() -> void:
	pass

func _on_3s_timeout() -> void:
	tempPath = shroomish.instantiate()
	add_child(tempPath)
	add_child(rattata.instantiate())
	add_child(shroomish.instantiate())

func _on_4s_timeout() -> void:
	tempPath = growlite.instantiate()
	add_child(tempPath)

func _on_10s_timeout() -> void:
	tempPath = growlite.instantiate()
	add_child(tempPath)
