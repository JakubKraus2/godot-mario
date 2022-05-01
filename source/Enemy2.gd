extends Sprite

var enemyIndex

export var enemy_name = "Spider"
export var max_health = 100
export var minDamage = 10
export var maxDamage = 20
export var bleed = 5
export var maxBleed = 20


func _process(delta):
	if $HealthDisplay.value <= 0:
		enemyIndex = DataHub.enemies2.find(self,0)
		DataHub.enemies.remove(enemyIndex)
		DataHub.enemies2.remove(enemyIndex)
		queue_free()

func attack():
	var damage = round(rand_range(minDamage, maxDamage)) - PlayerData.armor + bleed
	var damage_number = preload("res://source/DamageNumber.tscn").instance()
	if damage < 0:
		damage = 0
	damage_number.text = String(damage)
	damage_number.set_position(Vector2(rand_range(-50, 50), rand_range(-50, 50)))
	bleed *= 1.2
	bleed = round(bleed)
	if bleed > maxBleed:
		bleed = maxBleed
	get_parent().get_node("Player/HealthDisplay").value -= damage
	get_parent().get_node("Player/HealthDisplay").add_child(damage_number)
	print(self.name, " ", damage)
