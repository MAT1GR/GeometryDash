extends Area2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		# Global.death_count += 1
		# print("Muertes: ", Global.death_count)
		get_tree().reload_current_scene()
