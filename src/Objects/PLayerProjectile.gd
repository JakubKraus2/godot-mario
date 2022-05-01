extends KinematicBody2D

export var speed = 1000
var velocity = Vector2()
export var gravity: = 5000.0
var _velocity: = Vector2.ZERO
const FLOOR_NORMAL = Vector2.UP



func _physics_process(delta):
	var frame_position = position
	_velocity.y += gravity * delta
	position += transform.x * speed * delta
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
	var frame_position2 = position
	if frame_position == frame_position2:
		queue_free()
