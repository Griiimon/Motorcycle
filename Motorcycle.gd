extends Node2D

@export var front_wheel: Wheel
@export var rear_wheel: Wheel
@export var body: RigidBody2D

@export var acceleration: float= 10.0

func _ready():
	pass
	
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		rear_wheel.apply_torque(acceleration * delta * 1000)
	if Input.is_action_pressed("ui_down"):
		front_wheel.lock_rotation= true
	else:
		front_wheel.lock_rotation= false

