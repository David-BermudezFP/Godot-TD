extends Label

func _process(delta: float) -> void:
	self.text = "Time score: " + str(Game.timescore)
