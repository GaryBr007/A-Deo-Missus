extends Node2D

func _on_exitcj_2_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menus/tela_menu.tscn")


func _on_exitcj_3_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/fases/cenaro.tscn")
