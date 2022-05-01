extends "res://src/Acors/Actor.gd"

export var score: = 1000

export (int) var speedx = 200
var velocity = Vector2()
var speedx2 = 1

func _physics_process(delta: float) -> void:
	velocity = Vector2()
	
	if is_on_wall():
		speedx2 *= -1
		$enemy.transform.x *= -1
	
	velocity.x += speedx2
	velocity = velocity.normalized() * speedx
	velocity = move_and_slide(velocity)

	if Score.bosshp <= 0:
		die()

func die() -> void:
	gain_score()
	queue_free()

func gain_score() -> void:
	Score.score += score
