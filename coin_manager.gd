extends Node3D

@export var coin_scene: PackedScene
var score = 0
var coin_label

func _ready():
	# Create on-screen coin counter
	var canvas_layer = CanvasLayer.new()
	add_child(canvas_layer)

	coin_label = Label.new()
	coin_label.text = "Coins: 0"
	coin_label.set_position(Vector2(50, 30))
	canvas_layer.add_child(coin_label)

	# Connect all existing coins
	for coin in get_tree().get_nodes_in_group("Coins"):
		coin.connect("collected", self._on_coin_collected)

func _on_coin_collected():
	score += 1
	coin_label.text = "Coins: " + str(score)
