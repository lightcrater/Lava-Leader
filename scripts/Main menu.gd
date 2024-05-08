extends Button

func _ready():
	AudioServer.set_bus_mute(2, true)

func _on_pressed():
	get_tree().change_scene_to_file("res://levels/level 1.tscn")
