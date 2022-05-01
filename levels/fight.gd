extends Node2D

var enemy_location = 0
var chest

func spawn_enemies():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var enemies_number = rng.randi_range(0, 4) #how many enemies will spawn
	
	if enemies_number == 0:
		chest = preload("res://source/Chest.tscn").instance()
		add_child(chest)
		chest.transform.origin = Vector2(OS.get_real_window_size().x/2, OS.get_real_window_size().y/1.75)
	
	for n in enemies_number:
		var enemy_zombie = preload("res://source/Enemy.tscn").instance()
		var enemy_spider = preload("res://source/Enemy2.tscn").instance()
		var health_bar = preload("res://source/HealthBar.tscn").instance()
		var spawned_enemies = [enemy_zombie, enemy_spider] #array of all enemies
		var spawn_random_enemy = rng.randi_range(0, spawned_enemies.size()-1) #what enemy will spawn
		
		add_child(spawned_enemies[spawn_random_enemy])
		spawned_enemies[spawn_random_enemy].add_child(health_bar)
		spawned_enemies[spawn_random_enemy].transform.origin = Vector2(300 + (175 * enemy_location), 400)
		enemy_location += 1


func append_enemies():
	for node in get_tree().get_nodes_in_group("enemies"):
		DataHub.enemies2.append(node)
		for child in node.get_children():
			DataHub.enemies.append(child)

func _ready() -> void:
	spawn_enemies()
	append_enemies()

func _process(delta: float) -> void:
	if DataHub.enemies.empty() == true && !get_tree().get_nodes_in_group("chest"):
		$PopupMenu.show()
		$SkillPanel.get_child(0).hide()
	if DataHub.enemies.empty() && get_tree().get_nodes_in_group("chest"):
		$SkillPanel.get_child(0).hide()
