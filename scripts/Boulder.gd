extends Node2D

@onready var spark = $AnimatedSprite2D
const TRENCH = preload("res://nodes/Trench.tscn")
@onready var trench = TRENCH.instantiate()

func _on_break_radius_body_entered(body):
	if body.is_in_group("player"):
		spark.play("default")
		spark.show()
		$TextureButton.disabled = false

func _on_break_radius_body_exited(body):
	if body.is_in_group("player"):
		spark.pause()
		spark.hide()
		$TextureButton.disabled = true

func _on_texture_button_pressed():
	destroy()

func destroy():
	$TextureButton.disabled = true
	trench.set_global_transform(self.get_global_transform())
	get_parent().add_child(trench)
	$sfx.play()
	$break.emitting = true
	await get_tree().create_timer(0.5).timeout
	self.queue_free()

func _physics_process(delta):
	if Input.is_action_just_pressed("break") and $TextureButton.disabled == false:
		destroy()
