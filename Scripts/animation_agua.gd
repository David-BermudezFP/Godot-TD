extends AnimationPlayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_parent().get_parent().get_parent().progress_ratio < 0.3052:
		play("Abajo")
	if get_parent().get_parent().get_parent().progress_ratio > 0.3052 and get_parent().get_parent().get_parent().progress_ratio <= 0.4434:
		play("Derecha")
	if get_parent().get_parent().get_parent().progress_ratio > 0.4434 and get_parent().get_parent().get_parent().progress_ratio <= 0.5618:
		play("Arriba")
	if get_parent().get_parent().get_parent().progress_ratio > 0.5618:
		play("Izquierda")
	if get_parent().get_parent().get_parent().progress_ratio == 1:
		pass
			