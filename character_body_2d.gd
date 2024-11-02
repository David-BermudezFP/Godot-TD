extends CharacterBody2D


# Declaración de la velocidad y la constante de velocidad.
@export var SPEED := 190 # Ajusta la velocidad según lo necesites.
const JUMP_VELOCITY = -700.0


func _physics_process(delta: float) -> void:
	# Añadir direcciones de movimiento
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_up", "ui_down")

	# Establece la velocidad en `x` e `y` según la dirección y la velocidad.
	self.velocity.x = direction_x * SPEED
	self.velocity.y = direction_y * SPEED

	# Mueve al personaje según la velocidad calculada.
	move_and_slide()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../AudioStreamPlayer".play()
	pass # Replace with function body.
