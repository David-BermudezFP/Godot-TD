extends AnimationPlayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_parent().get_parent().get_parent().progress_ratio < 0.2171:
		play("Izquierda")
	if get_parent().get_parent().get_parent().progress_ratio > 0.2171 and get_parent().get_parent().get_parent().progress_ratio < 0.3816:
		play("Abajo")
	if get_parent().get_parent().get_parent().progress_ratio > 0.3815:
		play("Izquierda")
			