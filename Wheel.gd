extends RigidBody2D


func _ready():
	pass
	
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_select"):
		apply_torque_impulse(10000)
