extends Control

@onready var sprite = $Sprite2D

# Esta función ahora guarda la ruta de la textura en un archivo.
func _set_texture(texture_path: String) -> void:
	var save_file = FileAccess.open("user://skin_save.dat", FileAccess.WRITE)
	save_file.store_string(texture_path)
	
	# Esto actualiza la vista previa en la pantalla de selección.
	if FileAccess.file_exists(texture_path):
		sprite.texture = load(texture_path)

func _on_player_1_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer1.png")

func _on_player_2_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer2.png")

func _on_player_3_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer3.png")

func _on_player_4_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer4.png")

func _on_player_5_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer5.png")

func _on_player_6_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer6.png")

func _on_player_7_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer7.png")

func _on_player_8_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer8.png")

func _on_player_9_pressed() -> void:
	_set_texture("res://Sprites/Skins/jeffplayer9.png")

func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/mapas.tscn")
