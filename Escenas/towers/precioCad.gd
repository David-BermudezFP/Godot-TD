extends Label

func _process(delta: float) -> void:
	self.text =  str(10 + $"../../../../..".maxCad*10)
