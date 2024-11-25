extends Node2D

var ogScales = []

func _ready() -> void:
	$Musica_juego.set_pitch_scale(1)
	Game.timescore = 0
	

func _input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_ESCAPE :
		if $PAUSE.visible == false:
			$PAUSE.visible = true
			for i in $PathSpawner.get_children():
				if str(i).contains("Path"):
					if i.get_child(0).get_child(0) != null:
						i.get_child(0).get_child(0).speed = 0
				if str(i).contains("Timer"):
					i.stop()
			for i in $Torres.get_children():
				ogScales.append(i.get_node("Tower").get_child(0).scale)
				i.get_node("Tower").get_child(0).scale = Vector2(0,0)
		else:
			$PAUSE.visible = false
			for i in $PathSpawner.get_children():
				if str(i).contains("Path"):
					if i.get_child(0).get_child(0) != null:
						if i.get_child(0).get_child(0).name.contains("1_1"):
							i.get_child(0).get_child(0).speed = 40
						if i.get_child(0).get_child(0).name.contains("1_2"):
							i.get_child(0).get_child(0).speed = 50
						if i.get_child(0).get_child(0).name.contains("2_1"):
							i.get_child(0).get_child(0).speed = 80
						if i.get_child(0).get_child(0).name.contains("2_2"):
							i.get_child(0).get_child(0).speed = 140
						if i.get_child(0).get_child(0).name.contains("3"):
							i.get_child(0).get_child(0).speed = 25
						if i.get_child(0).get_child(0).name.contains("tank"):
							i.get_child(0).get_child(0).speed = 20
				
				if str(i).contains("Timer"):
					i.start(i.time_left)
					
			for i in $Torres.get_children():
				i.get_node("Tower").get_child(0).scale = ogScales.pop_front()
