extends Node2D

var open = preload("res://assets/open door.png")
@export var next_level_scene_path = "res://levels/Thx.tscn"
var actives = 0
@export var needed_actives = 1

func _on_target_active():
	actives +=1
	if actives == needed_actives:
		$Sprite2D.set_texture(open)
		$Area2D/CollisionShape2D.disabled = false
		$sfx.play()
		$Stars.emitting = true
		
func _on_door_entered(body):
	get_tree().change_scene_to_file(next_level_scene_path)
