extends Label


func _process(delta: float) -> void:
	if $"../../../../..".maxed == 0:
		self.text =  "+5"
	elif  $"../../../../..".maxed == 1:
		self.text =  "+25"
	elif  $"../../../../..".maxed == 2:
		self.text =  "+50"
	elif  $"../../../../..".maxed == 3:
		self.text =  "+75"
