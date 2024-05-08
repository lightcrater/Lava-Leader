extends Node2D

func _ready():
	AudioServer.set_bus_mute(2, true)

func _on_button_pressed():
	get_tree().quit()
