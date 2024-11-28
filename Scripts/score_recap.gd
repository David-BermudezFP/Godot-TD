extends Control

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	fetch_scores()

func fetch_scores():
	# Crear una instancia de HTTPRequest
	var http_request = HTTPRequest.new()
	add_child(http_request)
	# Conectar el evento de respuesta usando Callable
	http_request.connect("request_completed", Callable(self, "_on_scores_fetched"))
	# Enviar una solicitud GET
	var headers = ["Client-Secret: abc"]  # Incluir encabezado si es necesario
	http_request.request("http://127.0.0.1:8000/score", headers, HTTPClient.METHOD_GET)

func _on_scores_fetched(result: int, response_code: int, headers: Array, body: PackedByteArray):
	if response_code == 200:  # Verificar que la respuesta fue exitosa
		var body_text = body.get_string_from_utf8()
		# Mostrar la respuesta cruda
		
		# Intentar parsear el JSON directamente como un Array
		var scores = JSON.parse_string(body_text)
		
		# Ahora 'scores' debería ser un Array, no un ParseResult
		if scores is Array:  # Validar que el resultado sea un Array
			
			# Ordenar los puntajes en orden descendente
			scores.sort_custom(_sort_by_score)
				
			# Filtrar solo los 5 mejores puntajes
			var top_scores = scores.slice(0, 5)
				
			# Convertir los datos a texto legible
			var display_text = format_scores(top_scores)
				
			# Actualizar el Label con los datos
			$".".text = display_text
		else:
			printerr("Expected an Array but got: ", typeof(scores))
	else:
		printerr("Error fetching scores, response code: ", response_code)

# Función para ordenar el Array por puntajes de manera descendente
func _sort_by_score(a, b) -> int:
	# Si el puntaje de "a" es mayor que el de "b", a debe ir antes que b
	if a["score"] > b["score"]:
		return true  # Menor a 0 significa que "a" va antes
	return false   # Si son iguales, no cambia el orden

func format_scores(scores: Array) -> String:
	# Crear una cadena con el formato deseado para los puntajes
	var result_text = "TOP 5:\n"
	
	 # Encuentra la longitud máxima del nombre de usuario para alinear
	var max_username_length = 0
	for score_entry in scores:
		max_username_length = max(max_username_length, score_entry["username"].length())
	
	for score_entry in scores:
		# Usa el formato con padding para asegurar que los nombres de usuario estén alineados
		#result_text += "User: %-*s  |\t Score: %d\n" % [max_username_length,score_entry["username"], score_entry["score"]]
		result_text += "User: %s \n" % [score_entry["username"]]
	return result_text
