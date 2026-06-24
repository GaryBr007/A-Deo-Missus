extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		Global.itens2.append("Cruxifixo")
		$"../HUD/indicadorcruz2".visible = true
		$"../Grab".play()
		queue_free()
		
