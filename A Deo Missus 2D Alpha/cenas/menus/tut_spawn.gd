extends Marker2D
@export var InimigoCena:PackedScene
@export var Player:Node2D
func _process(_delta: float) -> void:
	if len(Global.itenstut) >= 1:
		var spawninimigo = InimigoCena.instantiate()
		spawninimigo.global_position = global_position
		spawninimigo.player = Player
		get_tree().current_scene.add_child(spawninimigo)
		$"../Spawn".play()
		$"../Kurt".visible = true
		$"../MenuPrincipal".visible = true
		
		queue_free()
		
