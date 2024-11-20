extends HSlider

# Referencia al AudioStreamPlayer
@onready var audio_player = GlobalAudioStreamPlayer


func _on_value_changed(value: float) -> void:
	$"../AudioStreamPlayer".volume_db = value
	audio_player.volume_db = value
