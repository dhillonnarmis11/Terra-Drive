extends VehicleBody3D

const MAX_STEER = 0.8

const ENGINE_POWER = 300

const MAX_BRAKE_FORCE = 30 

@onready var camera_pivot: Node3D = $CameraPivot
@onready var camera_3d: Camera3D = $CameraPivot/Camera3D

func _physics_process(delta):
	#turning wheels left and right, using max steer to determine how much they will turn
	#use move toward so it doesn't instantly turn
	steering = move_toward(steering, Input.get_axis("ui_right", "ui_left") * MAX_STEER, delta*3)

	#variable for accelerating and reversing
	var throttle_input = Input.get_axis('ui_down', 'ui_up')
	#variable for braking
	var is_braking = Input.is_action_pressed("brake") # Check if the new brake action is pressed
 
	if is_braking:
		# Apply brakes and set engine force to zero
		engine_force = 0.0		
		brake = MAX_BRAKE_FORCE

	elif throttle_input > 0:
		# Accelerate: apply engine force and release brake
		engine_force = throttle_input * ENGINE_POWER
		brake = 0.0 

	elif throttle_input < 0:
		# Reverse: apply negative engine force and release brake
		engine_force = throttle_input * ENGINE_POWER # Use negative throttle for reverse
		brake = 0.0

	else:
		# No input: release both engine force and brake (allows passive deceleration)
		engine_force = 0.0
		brake = 0.0

	#car moves more smooth by moving camera towards car each frame
	camera_pivot.global_position = camera_pivot.global_position.lerp(global_position, delta *20)
	
 
