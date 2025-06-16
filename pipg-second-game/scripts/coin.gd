extends Area3D

signal coinCollected

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	rotate_y(deg_to_rad(3))


func _on_body_entered(body: Node3D) -> void:
	if body.name == "Steve":
		$AnimationPlayer.play("bounce")
		$Timer.start()


func _on_timer_timeout() -> void:
	emit_signal("coinCollected")
	queue_free()
