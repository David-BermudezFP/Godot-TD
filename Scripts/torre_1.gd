extends Node2D

var Bullet = preload("res://Escenas/towers/Bullets/hoja.tscn")
var bulletDamage = 1
var pathName
var currTargets = []
var curr
var maxed = 0
var maxCad = 0
var maxRang = 0
var maxPow = 0
var focus = "normal"

func _process(delta: float) -> void:
	if (maxed == 1):
		$Bulbasaur.visible = false
		$Ivysaur.visible = true
		$Venusaur.visible = false
		$MegaVenusaur.visible = false
		
	elif (maxed == 2):
		$Bulbasaur.visible = false
		$Ivysaur.visible = false
		$Venusaur.visible = true
		$MegaVenusaur.visible = false
		
	elif (maxed == 3):
		$Bulbasaur.visible = false
		$Ivysaur.visible = false
		$Venusaur.visible = false
		$MegaVenusaur.visible = true
		

func _ready() -> void:
	self.get_child(1).get_child(0).play("idle")
	$Cadencia.start()


func _on_tower_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.name.contains("Enemigo"):
		var tempArray = []
		currTargets = get_node("Tower").get_overlapping_bodies()
		for i in currTargets:
			if ("Enemigo" in i.name) and (("agua" in i.tipo)or( i.tipo == self.focus)):
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
			self.get_child(maxed+1).get_child(0).play("idle")
			return
		pathName = currTarget.get_node("../").get_parent().name
		
		
func _on_cadencia_timeout() -> void:
	if curr != null:
		self.get_child(maxed+1).get_child(0).play("ataque")
		
		var tempBullet = Bullet.instantiate()
		tempBullet.pathName = pathName
		tempBullet.bulletDamage = bulletDamage
		get_node("BulletContainer").add_child(tempBullet)
		tempBullet.global_position = $Aim.global_position
		curr.leafsFollowing.append(tempBullet)


func _on_tower_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	var tempArray = []
	currTargets = get_node("Tower").get_overlapping_bodies()
	for i in currTargets:
		if ("Enemigo" in i.name) and (("agua" in i.tipo)or( i.tipo == focus)):
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
		self.get_child(maxed+1).get_child(0).play("idle")
		return
	pathName = currTarget.get_node("../").get_parent().name


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_mask == 1:
		var towerPath = get_tree().get_root().get_node("main/Torres")
		for i in towerPath.get_child_count():
			if towerPath.get_child(i).name != self.name:
				towerPath.get_child(i).get_node("Upgrade/Upgrade").hide
		
		get_node("Upgrade/Upgrade").visible = !get_node("Upgrade/Upgrade").visible
		get_node("Upgrade/Upgrade").global_position = self.position + Vector2(-65,20)


func _on_range_pressed() -> void:
	if $Tower/CollisionShape2D.scale < Vector2(14,14):
		if Game.gold >= 10:
			Game.gold -= 10
			$Tower/CollisionShape2D.scale = $Tower/CollisionShape2D.scale + Vector2(2,2)
	else:
		$Upgrade/Upgrade/HBoxContainer/Range.disabled = true
		maxed = maxed + 1
		self.get_child(maxed+1).get_child(0).play("idle")


func _on_attack_speed_pressed() -> void:
	if $Cadencia.wait_time >= 0.5:
		if Game.gold >= 10:
			Game.gold -= 10
			$Cadencia.wait_time = $Cadencia.wait_time - 0.20
			maxCad += 1
		if maxCad == 5:
			$Upgrade/Upgrade/HBoxContainer/AttackSpeed.disabled = true
			maxed = maxed + 1
			self.get_child(maxed+1).get_child(0).play("idle")
			
		
func _on_power_pressed() -> void:
	if bulletDamage < 5:
		if Game.gold >= 10:
			Game.gold -= 10
			bulletDamage = bulletDamage + 1
	else:
		$Upgrade/Upgrade/HBoxContainer/Power.disabled = true
		maxed = maxed + 1
		self.get_child(maxed+1).get_child(0).play("idle")


func _on_sell_pressed() -> void:
	Game.gold += 5
	queue_free()


func _on_tipo_pressed() -> void:
	focus = "agua"
	$Upgrade/Upgrade/Upgrade2/tipo.disabled = true
	$Upgrade/Upgrade/Upgrade2/normal.disabled = false


func _on_normal_pressed() -> void:
	focus = "normal"
	$Upgrade/Upgrade/Upgrade2/tipo.disabled = false
	$Upgrade/Upgrade/Upgrade2/normal.disabled = true
