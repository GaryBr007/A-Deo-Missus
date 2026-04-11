extends Node2D

func _ready() -> void:
	$AnimationPlayer.play("FadeIn")
	Global.speedrun_time = 0


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/fases/antartica.tscn")
	
func _on_comojoga_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menus/comojoga.tscn")
	
func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menus/creditos.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
