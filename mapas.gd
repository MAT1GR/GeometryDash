extends Control


func _on_player_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/node_2d.tscn")


func _on_player_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/mapa2.tscn")


func _on_player_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/mapa1.tscn")
	
	
func _on_player_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/node_2d.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/node_2d.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Recursos/Escenas/mapa2.tscn")
