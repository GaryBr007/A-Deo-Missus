extends Area2D

func _process(_delta: float) -> void:
	if len(Global.itens2) >= 4:
		visible = true
		monitoring = true
		monitorable = true
		
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://ganhou.tscn")
