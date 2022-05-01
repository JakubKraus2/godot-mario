extends Sprite

var rng = RandomNumberGenerator.new()


func _on_TextureButton_pressed():
	rng.randomize()
	PlayerData.prize += rng.randi_range(50, 200)
	remove_from_group("chest")
	$TextureButton.queue_free()
