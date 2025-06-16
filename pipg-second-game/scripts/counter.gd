extends Label

var coins = 0
var winThreshold = 10

func _ready() -> void:
	text = str(coins)

func _on_coin_coin_collected() -> void:
	coins = coins + 1
	_ready()
	if coins == winThreshold:
		$Timer.start()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://assets/win.tscn")
