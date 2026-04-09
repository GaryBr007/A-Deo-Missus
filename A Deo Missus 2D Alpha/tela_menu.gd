extends Node2D

func _ready() -> void:
	$AnimationPlayer.play("FadeIn")
	Global.speedrun_time = 0


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://antartica.tscn")
	
func _on_comojoga_pressed() -> void:
	get_tree().change_scene_to_file("res://comojoga.tscn")
	
func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://creditos.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
