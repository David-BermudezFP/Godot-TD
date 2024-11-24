extends Label

func _process(delta: float) -> void:
	self.text =  str(10 + $"../../../../..".maxPow*10)
