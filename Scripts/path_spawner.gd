extends Node2D

@onready var path = preload("res://Escenas/Stage 1.tscn")

func _on_timer_timeout() -> void:
	var tempPath = path.instantiate()
	add_child(tempPath)