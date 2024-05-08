extends Node2D
func _ready():
	Music.play()
	await get_tree().create_timer(0.2).timeout
	AudioServer.set_bus_mute(2, false)
