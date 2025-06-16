extends Camera3D

@export var target: NodePath
@export var offset := Vector3(0, 5, -10)
@export var speed := 5.0
@export var enabled: bool = true

func _process(delta: float) -> void:
	if not enabled:
		return

	var target_node := get_node(target) as Node3D
	if not target_node:
		return

	var desired_position = target_node.global_transform.origin + offset
	global_transform.origin = global_transform.origin.lerp(desired_position, speed * delta)

	look_at(target_node.global_transform.origin, Vector3.UP)
