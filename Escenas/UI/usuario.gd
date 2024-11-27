extends Control

# Función para manejar el evento de clic en el botón
func _on_confirm_pressed():
	# Obtener el texto ingresado por el usuario
	Game.username = $"../Usuario".text
	
	# Imprimir el nombre de usuario (puedes hacer algo con este valor)
	print("Usuario ingresado:", Game.username)
