extends Node3D

@export var level_count := 3

func _ready() -> void:
	GameManager.checkpoint = $Player.global_position
	GameManager.status_changed.emit("Find the energy shards and reach the exit beacon")

func complete_area() -> void:
	if GameManager.score < GameManager.shards_needed:
		GameManager.status_changed.emit("Collect every shard before leaving")
		return
	if GameManager.area < level_count:
		GameManager.next_area()
	else:
		GameManager.status_changed.emit("Game complete — all areas explored")
