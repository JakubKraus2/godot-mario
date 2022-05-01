extends Actor


export var stomp_impulse: = 1000.0
var boosted = false
export (PackedScene) var Player_projectile = load("res://src/Objects/PLayerProjectile.tscn")
export (PackedScene) var Player_projectileLeft = load("res://src/Objects/PLayerProjectileLeft.tscn")
var projectile_direction = 1



func get_projectile_direction():
	projectile_direction = Input.get_action_strength("move_left") - Input.get_action_strength("move_right")

func _on_EnemyDetector_area_entered(area: Area2D) -> void:
	_velocity = calculate_stomp_velocity(_velocity, stomp_impulse)

func _on_EnemyDetector_body_entered(body: Node) -> void: #load game
	Score.score = 0
	Score.bosshp = 3
	get_tree().reload_current_scene()


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move_left") || Input.is_action_pressed("move_right"):
		get_projectile_direction()
	var is_jump_interrupted: = Input.is_action_just_released("jump") and _velocity.y < 0.0
	var direction: = get_direction()
	_velocity = calculate_move_velocity(_velocity, direction, speed, is_jump_interrupted)
	_velocity = move_and_slide(_velocity, FLOOR_NORMAL)
	
	if _velocity == Vector2.ZERO || _velocity.y != 0.0:
		pass
	else:
		$AnimationTree.set("parameters/movement/blend_position", _velocity)


	if boosted == true && Input.is_action_just_pressed("left_button") && $BoostedTimer.time_left > 0.0:
		if projectile_direction <= 0.0:
			var Player_projectile_instance = Player_projectile.instance()
			owner.add_child(Player_projectile_instance)
			Player_projectile_instance.transform = $Position2D.global_transform
		if projectile_direction > 0.0:
			var Player_projectileLeft_instance = Player_projectileLeft.instance()
			owner.add_child(Player_projectileLeft_instance)
			Player_projectileLeft_instance.transform = $Position2D.global_transform
	else:
		pass
		
	if $BoostedTimer.time_left <= 0.0:
			self.scale = Vector2(1, 1)

func start_boosted_timer():
	$BoostedTimer.start()

func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"), 
		-1.0 if Input.is_action_pressed("jump") and is_on_floor() else 1.0
	)

func calculate_move_velocity(
		linear_velocity: Vector2,
		direction: Vector2,
		speed: Vector2,
		is_jump_interrupted: bool
	) -> Vector2:
	var out = linear_velocity
	out.x = speed.x * direction.x
	out.y += gravity * get_physics_process_delta_time()
	if direction.y == -1.0:
		out.y = speed.y * direction.y
	if is_jump_interrupted:
		out.y = 0.0
	return out


func calculate_stomp_velocity(linear_velocity: Vector2, impulse: float) -> Vector2:
	var out: = linear_velocity
	out.y = -impulse
	return out
