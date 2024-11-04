extends AnimationPlayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_parent().get_parent().get_parent().progress_ratio < 0.0667:
		play("Izquierda")
	if get_parent().get_parent().get_parent().progress_ratio > 0.0667 and get_parent().get_parent().get_parent().progress_ratio <= 0.1715:
		play("Abajo")
	if get_parent().get_parent().get_parent().progress_ratio > 0.1715 and get_parent().get_parent().get_parent().progress_ratio <= 0.2667:
		play("Izquierda")
	if get_parent().get_parent().get_parent().progress_ratio > 0.2667 and get_parent().get_parent().get_parent().progress_ratio <= 0.4477:
		play("Arriba")
	if get_parent().get_parent().get_parent().progress_ratio > 0.4477 and get_parent().get_parent().get_parent().progress_ratio <= 0.5429:
		play("Izquierda")
	if get_parent().get_parent().get_parent().progress_ratio > 0.5429 and get_parent().get_parent().get_parent().progress_ratio <= 0.7239:
		play("Abajo")
	if get_parent().get_parent().get_parent().progress_ratio > 0.7239 and get_parent().get_parent().get_parent().progress_ratio <= 0.8191:
		play("Izquierda")
	if get_parent().get_parent().get_parent().progress_ratio > 0.8191 and get_parent().get_parent().get_parent().progress_ratio <= 0.9143:
		play("Arriba")
	if get_parent().get_parent().get_parent().progress_ratio > 0.9143:
		play("Izquierda")
	if get_parent().get_parent().get_parent().progress_ratio == 1:
		pass
			
