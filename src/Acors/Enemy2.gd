extends "res://src/Acors/Actor.gd"

export var score: = 200
export var speedx = Vector2(200.0, 1000.0)


func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speedx.x


func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= - 1.0
		$enemy.scale.x *= -1
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y

func die() -> void:
	gain_score()
	queue_free()

func gain_score() -> void:
	Score.score += score
