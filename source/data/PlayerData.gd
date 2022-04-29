extends Node

signal damage_updated

signal skill1_updated
signal skill2_updated
signal skill3_updated
signal skill4_updated

signal health_updated
signal armor_updated

signal prize_updated

var damage: = 10 setget set_damage

var skill1: = 50 setget set_skill1
var skill2: = 40  setget set_skill2
var skill3: = 40  setget set_skill3
var skill4: = 25  setget set_skill4

var health: = 200 setget set_health
var armor: = 20 setget set_armor

var prize = 20000 setget set_prize

func set_damage(value: int) -> void:
	damage = value
	emit_signal("damage_updated")

func set_skill1(value: int) -> void:
	skill1 = value
	emit_signal("skill1_updated")

func set_skill2(value: int) -> void:
	skill2 = value
	emit_signal("skill2_updated")
	
func set_skill3(value: int) -> void:
	skill3 = value
	emit_signal("skill3_updated")
	
func set_skill4(value: int) -> void:
	skill4 = value
	emit_signal("skill4_updated")

func set_health(value: int) -> void:
	health = value
	emit_signal("health_updated")
	
func set_armor(value: int) -> void:
	armor = value
	emit_signal("armor_updated")

func set_prize(value: int) -> void:
	prize = value
	emit_signal("prize_updated")
