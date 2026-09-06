extends Area3D

var score := 0      
# signal emitted when the coin is collected by the car
signal collected

# called when the coin node enters the scene tree
func _ready():
	pass
	
func _process(delta):
	rotate_y(deg_to_rad(2))
# called whenever a physics body enters this Area3D
func _on_body_entered(body):
	print("Coin collected!")  # Debug message
	emit_signal("collected")
	queue_free()
