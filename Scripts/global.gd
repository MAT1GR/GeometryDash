extends CharacterBody2D

var move_speed = 600

func _physics_process(delta):
	# --- PRUEBA DE MOVIMIENTO DIRECTO ---
	# Esto ignora la física y mueve al personaje por la fuerza.
	
	# Obtenemos la dirección de la palanca.
	var direccion = Input.get_axis("mover_izquierda", "mover_derecha")
	
	# Imprimimos para asegurarnos de que sigue funcionando.
	print("Dirección detectada: ", direccion)
	
	# Movemos la posición directamente.
	position.x += direccion * move_speed * delta
