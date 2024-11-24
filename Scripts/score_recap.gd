extends Label


func _process(delta: float) -> void:
	
	self.text = "Usuario:" + str(Game.username) + "\nPuntuación: " + str(Game.timescore)
