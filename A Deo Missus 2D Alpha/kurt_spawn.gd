extends Marker2D
@export var InimigoCena2:PackedScene
@export var Player:Node2D
func _process(_delta: float) -> void:
	if len(Global.itens2) >= 3:
		var spawninimigo2 = InimigoCena2.instantiate()
		spawninimigo2.global_position = global_position
		spawninimigo2.player = Player
		get_tree().current_scene.add_child(spawninimigo2)
		queue_free()
		$"../Spawn2".play()
