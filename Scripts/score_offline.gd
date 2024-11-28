extends Label

var offlineScores = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	self.text ="Tu puntuación\n" + "User: " + str(Game.username) + "  |  Score: " + str(Game.timescore)
	
