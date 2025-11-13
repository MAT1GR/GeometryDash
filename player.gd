extends CharacterBody2D

const JUMP_VELOCITY = -600.0
const MOVE_SPEED = 600.0
var gravity = 2000.0

@onready var sprite = $Sprite2D

func _ready():
	# Carga la skin guardada (esto ya sabemos que funciona bien).
	var save_path = "user://skin_save.dat"
	if FileAccess.file_exists(save_path):
		var save_file = FileAccess.open(save_path, FileAccess.READ)
		var texture_path = save_file.get_as_text()
		if texture_path and FileAccess.file_exists(texture_path):
			sprite.texture = load(texture_path)

func _physics_process(delta):
	# Aplicar gravedad.
	if not is_on_floor():
		velocity.y += gravity * delta

	# --- LÓGICA DE SALTO (Funciona con Teclado y Joystick) ---
	if Input.is_action_just_pressed("saltar_juego") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# --- LÓGICA DE MOVIMIENTO (Funciona con Teclado y Joystick) ---
	var move_direction = 0.0
	
	# 1. Leer el teclado.
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		move_direction = 1.0
	elif Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		move_direction = -1.0
	
	# 2. Leer el joystick (si se está moviendo, anula al teclado).
	var joy_axis = Input.get_joy_axis(0, JOY_AXIS_LEFT_X)
	if abs(joy_axis) > 0.2: # Pequeña zona muerta para evitar movimiento fantasma.
		move_direction = joy_axis

	# 3. Aplicar el movimiento final.
	velocity.x = move_direction * MOVE_SPEED

	move_and_slide()
