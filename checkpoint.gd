extends Area3D

var activated := false

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node3D) -> void:
	if activated or not body is CharacterBody3D:
		return
	activated = true
	GameManager.set_checkpoint(global_position + Vector3(0, 1, 0))
