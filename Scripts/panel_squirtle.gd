extends Panel

@onready var tower = preload("res://Escenas/torre_2.tscn")
var currTile

# Configura el foco y mouse_filter en ready
func _ready() -> void:
	focus_mode = Control.FOCUS_ALL
	mouse_filter = Control.MOUSE_FILTER_STOP
	set_process_unhandled_input(true)

func _on_gui_input(event: InputEvent) -> void:
	var tempTower = tower.instantiate()
	if event is InputEventMouseButton and event.button_mask == 1:
		
		add_child(tempTower) 
		
		tempTower.process_mode = Node.PROCESS_MODE_DISABLED
		
	elif event is InputEventMouseMotion and event.button_mask == 1:
		# Drag click izq
		if get_child_count() > 1:
			get_child(1).global_position = event.global_position
		
	elif event is InputEventMouseButton and event.button_mask == 0:
		# Release Click izq
		if event.global_position.x < 50 and event.global_position.y > 431:
			if get_child_count() > 1:
				get_child(1).queue_free()
		else:
			if get_child_count() > 1:
				get_child(1).queue_free()
			var path = get_tree().get_root().get_node("main/Torres")
			
			path.add_child(tempTower)
			tempTower.global_position = event.global_position
			tempTower.get_node("Area").hide()
	else:
		if get_child_count() > 1:
			get_child(1).queue_free()
