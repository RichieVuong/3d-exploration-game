extends CanvasLayer

@onready var score_label: Label = $MarginContainer/VBox/Score
@onready var area_label: Label = $MarginContainer/VBox/Area
@onready var status_label: Label = $MarginContainer/VBox/Status

func _ready() -> void:
	GameManager.score_changed.connect(_on_score_changed)
	GameManager.area_changed.connect(_on_area_changed)
	GameManager.status_changed.connect(_on_status_changed)
	_on_score_changed(GameManager.score)
	_on_area_changed(GameManager.area)

func _on_score_changed(value: int) -> void:
	score_label.text = "Shards: %d / %d" % [value, GameManager.shards_needed]

func _on_area_changed(value: int) -> void:
	area_label.text = "Area %d" % value

func _on_status_changed(message: String) -> void:
	status_label.text = message
