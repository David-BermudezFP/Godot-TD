extends HSlider



func _on_drag_ended(value_changed: bool) -> void:
	pass


func _on_value_changed(value: float) -> void:
	Game.volumen = value
