extends Node2D

#PLANTA
var shroomish = preload("res://Escenas/Stages/Stage_planta_shroomish.tscn")
var breloom = preload("res://Escenas/Stages/Stage_planta_Breloom.tscn")
var exeggcutor = preload("res://Escenas/Stages/Stage_planta_Exeggcutor.tscn")

var exegg = preload("res://Escenas/Stages/Stage_planta_Exegg.tscn")
#AGUA
var psyduck = preload("res://Escenas/Stages/Stage_agua_psyduck.tscn")
var golduck = preload("res://Escenas/Stages/Stage_agua_golduck.tscn")
var wailord = preload("res://Escenas/Stages/Stage_agua_Wailord.tscn")

var wailmer = preload("res://Escenas/Stages/Stage_agua_Wailmer.tscn")
#FUEGO
var growlite = preload("res://Escenas/Stages/Stage_fuego_growlite.tscn")
var arcanine = preload("res://Escenas/Stages/Stage_fuego_arcanine.tscn")
var camerupt = preload("res://Escenas/Stages/Stage_fuego_Camerupt.tscn")

var ponyta = preload("res://Escenas/Stages/Stage_fuego_ponyta.tscn")
var rapidash = preload("res://Escenas/Stages/Stage_fuego_rapidash.tscn")
#NORMAL
var rattata = preload("res://Escenas/Stages/Stage_normal_ratata.tscn")
var raticate = preload("res://Escenas/Stages/Stage_normal_ratikate.tscn")
var snorlax = preload("res://Escenas/Stages/Stage_normal_Snorlax.tscn")

var meowth = preload("res://Escenas/Stages/Stage_normal_meowth.tscn")
var persian = preload("res://Escenas/Stages/Stage_normal_persian.tscn")


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
	if Game.timescore > 60 and Game.timescore <= 300:
		spawn_rattata()
		spawn_psyduck()
		spawn_growlite()
		spawn_shroomish()

	if Game.timescore > 120 and Game.timescore <= 300:
		spawn_raticate()
	if Game.timescore > 150 and Game.timescore <= 300:
		spawn_golduck()
	if Game.timescore > 180 and Game.timescore <= 300:
		spawn_arcanine()
	if Game.timescore > 210 and Game.timescore <= 300:
		spawn_breloom()
	if Game.timescore > 300 and Game.timescore <= 420:
		spawn_breloom()
		spawn_golduck()
		spawn_raticate()
		spawn_arcanine()
	if Game.timescore > 330 and Game.timescore <= 480:
		spawn_meowth()
	if Game.timescore > 360 and Game.timescore <= 480:
		spawn_ponyta()
	if Game.timescore > 390 and Game.timescore <= 540:
		spawn_exegg()
	if Game.timescore > 420 and Game.timescore <= 540:
		spawn_wailmer()
	if Game.timescore > 450 and Game.timescore <= 540:
		spawn_persian()
	if Game.timescore > 480 and Game.timescore <= 540:
		spawn_rapidash()
	if Game.timescore > 640 and Game.timescore <= 750:
		spawn_wailord()
		spawn_camerupt()
		spawn_exeggcutor()
		spawn_snorlax()


func _on_3s_timeout() -> void:
	if Game.timescore > 300:
		spawn_rattata()
		spawn_psyduck()
		spawn_growlite()
		spawn_shroomish()
		
	if Game.timescore > 420:
		spawn_breloom()
		spawn_golduck()
		spawn_raticate()
		spawn_arcanine()
		
	if Game.timescore > 480:
		spawn_ponyta()
		spawn_meowth()
		
	if Game.timescore > 540:
		spawn_wailmer()
		spawn_exegg()
		spawn_rapidash()
		spawn_persian()
		
	if Game.timescore > 750:
		spawn_wailord()
		spawn_camerupt()
		spawn_exeggcutor()
		spawn_snorlax()


func _on_10s_timeout() -> void:
	if Game.timescore > 520 and Game.timescore <= 640:
		spawn_snorlax()
	if Game.timescore > 550 and Game.timescore <= 640:
		spawn_exeggcutor()
	if Game.timescore > 580 and Game.timescore <= 640:
		spawn_camerupt()
	if Game.timescore > 610 and Game.timescore <= 640:
		spawn_wailord()
		
		
func _on_1s_timeout() -> void:
	if Game.timescore > 00:
		spawn_wailord()
		spawn_camerupt()
		spawn_exeggcutor()
		spawn_snorlax()
		
		spawn_wailmer()
		spawn_exegg()
		#spawn_rapidash()
		spawn_persian()
		
		#spawn_ponyta()
		spawn_meowth()
		
		spawn_breloom()
		spawn_golduck()
		spawn_raticate()
		spawn_arcanine()
		
		spawn_rattata()
		spawn_psyduck()
		spawn_growlite()
		spawn_shroomish()
	
	
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
	
func spawn_meowth():
	var meowth_instance = meowth.instantiate()
	add_child(meowth_instance)

func spawn_persian():
	var persian_instance = persian.instantiate()
	add_child(persian_instance)
	
func spawn_ponyta():
	var ponyta_instance = ponyta.instantiate()
	add_child(ponyta_instance)
	
func spawn_rapidash():
	var rapidash_instance = rapidash.instantiate()
	add_child(rapidash_instance)
	
func spawn_wailmer():
	var wailmer_instance = wailmer.instantiate()
	add_child(wailmer_instance)
	
func spawn_exegg():
	var exegg_instance = exegg.instantiate()
	add_child(exegg_instance)
	
func _on_check_timeout() -> void:
	if $".".get_children() != null:
		for i in $".".get_children():
			if str(i).contains("Path"):
				if i.get_child(0).get_child(0) == null:
					i.queue_free()

func _on_cronómetro_timeout() -> void:
	Game.increase_score(1)
