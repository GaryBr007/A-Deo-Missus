extends Area2D

var somdoinferno = false


func _process(_delta: float) -> void:
	if len(Global.itens) >= 1 and monitorable == false:
		visible = true
		monitoring = true
		monitorable = true
		$AudioStreamPlayer2D3.play()
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://cenas/fases/cenaro.tscn")
