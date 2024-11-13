extends Node2D

var Bullet = preload("res://Escenas/towers/Bullets/gota.tscn")
var bulletDamage = 1
var pathName
var currTargets = []
var curr

func _ready() -> void:
	self.get_child(1).get_child(0).play("idle")
	$Cadencia.start()

func _on_tower_body_shape_entered_tower2(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.name.contains("Enemigo"):
		var tempArray = []
		currTargets = get_node("Tower").get_overlapping_bodies()
		
		for i in currTargets:
			if ("Enemigo" in i.name) and (("fuego" in i.tipo)or("normal" in i.tipo)):
				tempArray.append(i)
				
		var currTarget = null
		
		for i in tempArray:
			if currTarget == null:
				currTarget = i
			else:
				if i.get_parent().get_progress() > currTarget.get_parent().get_progress():
					currTarget = i
		
		curr = currTarget
		if currTarget == null:
			return
		pathName = currTarget.get_node("../").get_parent().name
		
		
func _on_cadencia_timeout() -> void:
	if curr != null:
		self.get_child(1).get_child(0).play("ataque")
		var tempBullet = Bullet.instantiate()
		tempBullet.pathName = pathName
		tempBullet.bulletDamage = bulletDamage
		get_node("BulletContainer").add_child(tempBullet)
		tempBullet.global_position = $Aim.global_position
		curr.leafsFollowing.append(tempBullet)
		

func _on_tower_body_shape_exited_tower2(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	self.get_child(1).get_child(0).play("idle")
