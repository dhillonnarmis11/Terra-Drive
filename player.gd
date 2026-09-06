extends VehicleBody3D

#constant for how much wheels will turn
const MAX_STEER = 0.8
const ENGINE_POWER = 300
@onready var camera_pivot: Node3D = $CameraPivot
@onready var camera_3d: Camera3D = $CameraPivot/Camera3D
var look_at
func _ready():
	#hide mouse
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	look_at = global_position
#called every frame while car moves. delta is the elapsed time since the last frame
func _physics_process(delta):
	#takes inputs from player for left and right multiplying it by max steer to rotate wheels
	#wrapped in move toward to get the amount to move the car every step of the function 
	steering = move_toward(steering, Input.get_axis("ui_left", "ui_right") * MAX_STEER, delta*2.5)
	#propel car forwards by getting up and down inputs and multiplying by engine power
	#Engine power depends on vehicle wieght and speed we want to acheive. Works per traction wheel
	engine_force = Input.get_axis('ui_down',"ui_up") * ENGINE_POWER
	#make camera move more smooth
	camera_pivot.global_position = camera_pivot.global_position.lerp(global_position, delta *20)
	camera_pivot.transform = camera_pivot.transform.interpolate_with(transform, delta * 5.0)
	look_at = look_at.lerp(global_position + linear_velocity, delta * 5.0)
	camera_3d.look_at(look_at)
