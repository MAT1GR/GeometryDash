extends Node2D

@onready var progress_bar = $CanvasLayer/ProgressBar
@onready var player = $Player

var nivel_longitud: float = 105  # Ajusta según la longitud real del nivel

func _process(delta):
	if player:
		var progreso = clamp(player.position.x / nivel_longitud, 0, 100 )  
		progress_bar.value = progreso
