extends Control


func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/mapas.tscn")


func _on_personajes_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/seleccionPersonajes.tscn")


func _on_salir_pressed() -> void:
	get_tree().quit()
