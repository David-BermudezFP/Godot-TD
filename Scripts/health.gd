extends Label

func _process(delta: float) -> void:
	self.text = "Salud: " + str(Game.health)
