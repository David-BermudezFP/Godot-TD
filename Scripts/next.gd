extends Button


func _on_pressed() -> void:
	if $"../Panel".visible == true:
		$"../Panel".visible = false
		$"../Panel2".visible = true
	else:
		$"../Panel".visible = true
		$"../Panel2".visible = false
		
