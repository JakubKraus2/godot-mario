extends "res://src/Acors/Actor.gd"

export var score: = 200

func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speed.x


func _on_stompDetector_body_entered(body: PhysicsBody2D) -> void:
	if body.global_position.y > get_node("stompDetector").global_position.y:
		return
	get_node("enemy_collision").disabled = true
	die()

func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= - 1.0
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
	
func _on_Area2D_body_entered(body):
	if body.is_in_group("player_projectile"):
		body.queue_free()
		die()

func die() -> void:
	gain_score()
	queue_free()

func gain_score() -> void:
	Score.score += score
