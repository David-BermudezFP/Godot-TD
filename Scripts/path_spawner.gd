extends Node2D

#PLANTA
var shroomish = preload("res://Escenas/Stages/Stage_planta_shroomish.tscn")
var breloom = preload("res://Escenas/Stages/Stage_planta_Breloom.tscn")
var exeggcutor = preload("res://Escenas/Stages/Stage_planta_Exeggcutor.tscn")
#AGUA
var psyduck = preload("res://Escenas/Stages/Stage_agua_psyduck.tscn")
var golduck = preload("res://Escenas/Stages/Stage_agua_golduck.tscn")
var wailord = preload("res://Escenas/Stages/Stage_agua_Wailord.tscn")
#FUEGO
var growlite = preload("res://Escenas/Stages/Stage_fuego_growlite.tscn")
var arcanine = preload("res://Escenas/Stages/Stage_fuego_arcanine.tscn")
var camerupt = preload("res://Escenas/Stages/Stage_fuego_Camerupt.tscn")
#NORMAL
var rattata = preload("res://Escenas/Stages/Stage_normal_ratata.tscn")
var raticate = preload("res://Escenas/Stages/Stage_normal_ratikate.tscn")
var snorlax = preload("res://Escenas/Stages/Stage_normal_Snorlax.tscn")


func _on_5s_timeout() -> void:
	
	#Ronda 1: 60s
	if Game.timescore <= 15:
		spawn_rattata()
	if Game.timescore > 15 and Game.timescore <= 30:
		spawn_psyduck()
	if Game.timescore > 30 and Game.timescore <= 45:
		spawn_growlite()
	if Game.timescore > 45 and Game.timescore <= 60:
		spawn_shroomish()
	
	#Ronda 2: 120s
	if Game.timescore > 60 and Game.timescore <= 80:
		spawn_rattata()
		spawn_psyduck()
	if Game.timescore > 80 and Game.timescore <= 100:
		spawn_growlite()
		spawn_rattata()
	if Game.timescore > 100 and Game.timescore <= 120:
		spawn_rattata()
		spawn_shroomish()
	if Game.timescore > 120 and Game.timescore <= 140:
		spawn_growlite()
		spawn_psyduck()
	if Game.timescore > 140 and Game.timescore <= 160:
		spawn_growlite()
		spawn_shroomish()
	if Game.timescore > 160 and Game.timescore <= 180:
		spawn_shroomish()
		spawn_psyduck()
		
	#Ronda 3: 180s
	if Game.timescore > 180 and Game.timescore <= 240:
		spawn_raticate()
	if Game.timescore > 240 and Game.timescore <= 260:
		spawn_rattata()
		spawn_psyduck()
		spawn_growlite()
	if Game.timescore > 260 and Game.timescore <= 280:
		spawn_shroomish()
		spawn_psyduck()
		spawn_growlite()
	if Game.timescore > 280 and Game.timescore <= 300:
		spawn_shroomish()
		spawn_psyduck()
		spawn_growlite()
		spawn_rattata()
	if Game.timescore > 300 and Game.timescore <= 360:
		spawn_shroomish()
		spawn_psyduck()
		spawn_growlite()
		spawn_raticate()
		
		
	#Ronda 4: 180s
	if Game.timescore > 360 and Game.timescore <= 420:
		spawn_shroomish()
		spawn_golduck()
		spawn_growlite()
		spawn_raticate()
	if Game.timescore > 420 and Game.timescore <= 480:
		spawn_breloom()
		spawn_golduck()
		spawn_growlite()
		spawn_raticate()
	if Game.timescore > 480 and Game.timescore <= 800:
		spawn_breloom()
		spawn_golduck()
		spawn_arcanine()
		spawn_raticate()
	# PARADA A LOS 800 SALEN TANKES



#Desde la ronda 5 en adelante
func _on_3s_timeout() -> void:
	#Ronda 5.1
	if Game.timescore > 500 and Game.timescore <= 615:
		spawn_rattata()
	if Game.timescore > 615 and Game.timescore <= 630:
		spawn_shroomish()
	if Game.timescore > 630 and Game.timescore <= 645:
		spawn_psyduck()
	if Game.timescore > 660 and Game.timescore <= 675:
		spawn_growlite()
		
	#Ronda 5.2
	if Game.timescore > 675 and Game.timescore <= 690:
		spawn_rattata()
		spawn_psyduck()
		spawn_growlite()
	if Game.timescore > 705 and Game.timescore <= 720:
		spawn_growlite()
		spawn_rattata()
		spawn_shroomish()
	if Game.timescore > 720 and Game.timescore <= 735:
		spawn_rattata()
		spawn_shroomish()
		spawn_psyduck()
	if Game.timescore > 735 and Game.timescore <= 750:
		spawn_growlite()
		spawn_shroomish()
		spawn_psyduck()
	if Game.timescore > 750 and Game.timescore <= 765:
		spawn_growlite()
		spawn_rattata()
		spawn_shroomish()
	if Game.timescore > 765 and Game.timescore <= 800:
		spawn_shroomish()
		spawn_psyduck()
		spawn_growlite()
		spawn_rattata()
	# PARADA A LOS 800 SALEN TANKES

func _on_10s_timeout() -> void:
	if Game.timescore > 800 and Game.timescore <= 830:
		spawn_snorlax()
	# 20 SEGUNDOS DE PASO
	if Game.timescore > 850 and Game.timescore <= 880:
		spawn_exeggcutor()
	# 20 SEGUNDOS DE PASO
	if Game.timescore > 900 and Game.timescore <= 930:
		spawn_camerupt()
	# 20 SEGUNDOS DE PASO
	if Game.timescore > 950 and Game.timescore <= 1000:
		spawn_wailord()

func spawn_rattata():
	var rattata_instance = rattata.instantiate()
	add_child(rattata_instance)
	
func spawn_psyduck():
	var psyduck_instance = psyduck.instantiate()
	add_child(psyduck_instance)
	
func spawn_growlite():
	var growlite_instance = growlite.instantiate()
	add_child(growlite_instance)
	
func spawn_shroomish():
	var shroomish_instance = shroomish.instantiate()
	add_child(shroomish_instance)

func spawn_raticate():
	var raticate_instance = raticate.instantiate()
	add_child(raticate_instance)
	
func spawn_arcanine():
	var arcanine_instance = arcanine.instantiate()
	add_child(arcanine_instance)
	
func spawn_breloom():
	var breloom_instance = breloom.instantiate()
	add_child(breloom_instance)
	
func spawn_golduck():
	var golduck_instance = golduck.instantiate()
	add_child(golduck_instance)
	
func spawn_wailord():
	var wailord_instance = wailord.instantiate()
	add_child(wailord_instance)
	
func spawn_camerupt():
	var camerupt_instance = camerupt.instantiate()
	add_child(camerupt_instance)

func spawn_snorlax():
	var snorlax_instance = snorlax.instantiate()
	add_child(snorlax_instance)

func spawn_exeggcutor():
	var exeggcutor_instance = exeggcutor.instantiate()
	add_child(exeggcutor_instance)
	
	
func _on_check_timeout() -> void:
	if $".".get_children() != null:
		for i in $".".get_children():
			if str(i).contains("Path"):
				if i.get_child(0).get_child(0) == null:
					i.queue_free()

func _on_cronómetro_timeout() -> void:
	Game.increase_score(1)
