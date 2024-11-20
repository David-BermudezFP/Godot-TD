extends Label

func _process(delta: float) -> void:
	self.text = "Oro: " + str(Game.gold)
