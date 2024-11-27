extends AudioStreamPlayer

var volumen = self.volume_db
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play()


func _process(delta: float) -> void:
	self.volume_db = Game.volumen
