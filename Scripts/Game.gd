extends Node

var volumen = -20
var health = 50
var gold = 30
var timescore = 0
var username = "Anon"
var ispaused = false

func decrement_health(damage: int):
	health -= damage
	if health <= 0:
		send_post_new_score()
		game_over()
		health = 50
		gold = 30
		
func increase_score(points: int):
	timescore += points

func game_over():
	get_tree().change_scene_to_file("res://Escenas/UI/gameover.tscn")
		
		
func send_post_new_score():
	if username == null:
		printerr("Will NOT send POST data with score due to invalid username")
		printerr("There might have been an error loading user_data file")
		return
	
	# Username OK. Let's send the request
	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.connect("request_completed", _on_server_has_responded)
	var body = {"username": username, "score": timescore}
	var body_JSON = JSON.stringify(body)
	var headers = ["Content-Type: application/json", "Client-Secret: abc"] # CLIENT_SECRET should never be public! If leaked, ALL clients should be force-updated to use a new one
	http_request.request("http://127.0.0.1:8000/score", headers, HTTPClient.METHOD_POST, body_JSON)


func _on_server_has_responded(result, response_code, headers, body):
	var response = JSON.parse_string(body.get_string_from_utf8())
	print("Server response:")
	print(response)
	
