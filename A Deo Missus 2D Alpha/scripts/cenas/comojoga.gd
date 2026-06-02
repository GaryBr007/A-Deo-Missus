extends Node2D

func _ready() -> void:
	Global.itens2 = []
	$AnimationPlayer.play("FadeIn")

func _on_exitcj_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menus/tela_menu.tscn")
