extends Node2D

func cool():
	self.remove_from_group("lava")

func Unpause():
	process_mode = Node.PROCESS_MODE_INHERIT
