extends Node2D

const TRENCH = preload("res://nodes/Trench.tscn")
var trench
const LAVA = preload("res://nodes/Pebble lava.tscn")
var lava
@onready var up = $Node2D/up
@onready var down = $Node2D/down
@onready var left = $Node2D/left
@onready var right = $Node2D/right
var collide
var flow_speed = 0.05

func _process(delta):
	Up()
	Down()
	Left()
	Right()

func Up():
	collide = up.get_collider()
	if collide!= null:
		if collide.get_parent().is_in_group("lava"):
			lava = LAVA.instantiate()
			await get_tree().create_timer(flow_speed).timeout
			lava.set_global_transform(self.get_global_transform())
			get_parent().add_child(lava)
			self.queue_free()

func Down():
	collide = down.get_collider()
	if collide!= null:
		if collide.get_parent().is_in_group("lava"):
			lava = LAVA.instantiate()
			await get_tree().create_timer(flow_speed).timeout
			lava.set_global_transform(self.get_global_transform())
			get_parent().add_child(lava)
			self.queue_free()

func Left():
	collide = left.get_collider()
	if collide!= null:
		if collide.get_parent().is_in_group("lava"):
			lava = LAVA.instantiate()
			await get_tree().create_timer(flow_speed).timeout
			lava.set_global_transform(self.get_global_transform())
			get_parent().add_child(lava)
			self.queue_free()

func Right():
	collide = right.get_collider()
	if collide!= null:
		if collide.get_parent().is_in_group("lava"):
			lava = LAVA.instantiate()
			await get_tree().create_timer(flow_speed).timeout
			lava.set_global_transform(self.get_global_transform())
			get_parent().add_child(lava)
			self.queue_free()

func _on_area_2d_body_exited(body):
	await get_tree().create_timer(flow_speed).timeout
	trench = TRENCH.instantiate()
	trench.set_global_transform(self.get_global_transform())
	get_parent().add_child(trench)
	self.queue_free()
