extends Node2D

func _ready() -> void:
	Global.timer_contando = false

func _on_exitcj_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menus/tela_menu.tscn")
	Global.speedrun_time = 0
	Global.timer_contando = true
	
