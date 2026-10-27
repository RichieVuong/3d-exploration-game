extends Node

var score := 0
var area := 1
var checkpoint := Vector3.ZERO
var shards_needed := 3

signal score_changed(value: int)
signal area_changed(value: int)
signal status_changed(message: String)

func collect_shard() -> void:
	score += 1
	score_changed.emit(score)
	status_changed.emit("Energy shard collected")

func set_checkpoint(position: Vector3) -> void:
	checkpoint = position
	status_changed.emit("Checkpoint updated")

func reset_player(player: CharacterBody3D) -> void:
	player.global_position = checkpoint
	player.velocity = Vector3.ZERO
	status_changed.emit("Returned to checkpoint")

func next_area() -> void:
	area += 1
	area_changed.emit(area)
	status_changed.emit("Area %d unlocked" % area)
