extends CharacterBody2D

const SPEED = 90

@export var musica_ambiente: AudioStream
@export var footsteps: AudioStream

func _ready() -> void:
	$Ambiente.stream = musica_ambiente
	$Ambiente.play()
	$Footsteps.stream = footsteps


func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		$Footsteps.play()
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		$Footsteps.play()
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		$Footsteps.play()
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		$Footsteps.play()

	if velocity != Vector2.ZERO:
		velocity = velocity.normalized() * SPEED
		$Footsteps.stop()

	position += velocity * delta
	move_and_slide()
