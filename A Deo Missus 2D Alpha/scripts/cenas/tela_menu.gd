extends Node2D
 
#@onready var recomendacao_texto = $RecomendacaoTexto
#@onready var recomendacao_seta = $RecomendacaoSeta

func _ready() -> void:
	$AnimationPlayer.play("FadeIn")
	Global.speedrun_time = 0
	if Global.tutorial == true:
		$Play.disabled = false
#		recomendacao_texto.visible = false
#		recomendacao_seta.visible = false

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/fases/antartica.tscn")
	
func _on_comojoga_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menus/comojoga.tscn")
	
func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/menus/creditos.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
