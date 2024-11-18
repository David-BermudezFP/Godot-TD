extends CharacterBody2D

@export var tipo = "fuego"
@export var speed = 50
var health = 8
var leafsFollowing = []

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_parent().set_progress(get_parent().get_progress() +speed*delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()
	
	if health <= 0:
		get_parent().get_parent().queue_free()
		for i in leafsFollowing:
			if is_instance_valid(i):
				i.queue_free()
