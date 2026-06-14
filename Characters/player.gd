extends character

func get_input() -> void:
	mov_direction = Vector2.ZERO
	
	# 1. Capturamos el input de las teclas
	if Input.is_action_pressed("ui_down"):
		mov_direction += Vector2.DOWN
	if Input.is_action_pressed("ui_left"):
		mov_direction += Vector2.LEFT
	if Input.is_action_pressed("ui_right"):
		mov_direction += Vector2.RIGHT
	if Input.is_action_pressed("ui_up"):
		mov_direction += Vector2.UP
		
	# 2. Controlamos el flip del sprite según la dirección de movimiento
	if mov_direction.x > 0:
		# Si va a la derecha, desactivamos el flip
		animated_sprite.flip_h = false
	elif mov_direction.x < 0:
		# Si va a la izquierda, activamos el flip
		animated_sprite.flip_h = true
