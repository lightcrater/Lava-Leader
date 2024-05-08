extends Node2D

@onready var light = $PointLight2D
var full = preload("res://assets/Full target.png")
@onready var ray = $RayCast2D
var collide
signal active
var disable = false

func _process(delta):
	collide = ray.get_collider()
	if collide!= null and disable == false:
		if collide.get_parent().is_in_group("lava"):
			disable = true
			light.energy = 0.5
			$Sprite2D.set_texture(full)
			active.emit()
			
			

