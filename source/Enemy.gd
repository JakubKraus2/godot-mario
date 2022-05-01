extends Sprite

var enemyIndex

export var enemy_name = "Zombie"
export var max_health = 150
export var minDamage = 20
export var maxDamage = 40


func _process(delta):
	if $HealthDisplay.value <= 0:
		enemyIndex = DataHub.enemies2.find(self,0)
		DataHub.enemies.remove(enemyIndex)
		DataHub.enemies2.remove(enemyIndex)
		queue_free()


func attack():
	var damage = round(rand_range(minDamage, maxDamage)) - PlayerData.armor
	var damage_number = preload("res://source/DamageNumber.tscn").instance()
	if damage < 0:
		damage = 0
	damage_number.text = String(damage)
	damage_number.set_position(Vector2(rand_range(-50, 50), rand_range(-50, 50)))
	get_parent().get_node("Player/HealthDisplay").value -= damage
	get_parent().get_node("Player/HealthDisplay").add_child(damage_number)
	print(self.name, " ", damage)
