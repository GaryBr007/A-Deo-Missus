extends CanvasLayer

var time = Global.speedrun_time

func _physics_process(delta: float) -> void:
	if Global.timer_contando:
		time += delta
		Global.speedrun_time = time
	update_ui()
	
func update_ui():
	var t = float(Global.speedrun_time)
	var formatted_time = "%.2f" % t
	$Label.text = formatted_time
