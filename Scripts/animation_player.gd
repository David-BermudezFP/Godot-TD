extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		play("derecha")
	elif Input.is_action_pressed("ui_left"):
		play("Izquierda")
	elif Input.is_action_pressed("ui_down"):
		play("Abajo")
	elif Input.is_action_pressed("ui_up"):
		play("Arriba")
	
