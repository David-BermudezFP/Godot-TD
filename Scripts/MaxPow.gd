extends Label



func _process(delta: float) -> void:
	self.text =  str($"../../../../..".maxPow)+ "/5"
