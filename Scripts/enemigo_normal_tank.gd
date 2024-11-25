extends CharacterBody2D

@export var tipo = "normal"
@export var speed = 20
var health = 100
var leafsFollowing = []

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_parent().set_progress(get_parent().get_progress() +speed*delta)
	if get_parent().get_progress_ratio() == 1:
		Game.decrement_health(health)
		queue_free()
	
	if health <= 0:
		Game.gold += 10
		get_parent().get_parent().queue_free()
		for i in leafsFollowing:
			if is_instance_valid(i):
				i.queue_free()
