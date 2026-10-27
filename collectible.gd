extends Area3D

var collected := false

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _process(delta: float) -> void:
	rotate_y(delta * 2.0)

func _on_body_entered(body: Node3D) -> void:
	if collected or not body is CharacterBody3D:
		return
	collected = true
	GameManager.collect_shard()
	queue_free()
