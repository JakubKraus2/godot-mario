extends KinematicBody2D

var speed = 500
var velocity = Vector2()
var direction = 1



func _physics_process(delta):
	position -= transform.x * speed * delta
