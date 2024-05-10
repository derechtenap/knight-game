extends Node

var score = 0
var level_coins = 0

@onready var score_label = $scoreLabel
@onready var coins = $"../Coins"

func _ready():
	level_coins = coins.get_child_count()
	update_score_label()

func add_point():
	score += 1
	update_score_label()

func update_score_label():
	score_label.text = "You collected %d/%d coins!" % [score, level_coins]
