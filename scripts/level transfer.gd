extends Node

var currentlvl = null
var nextlvl = "level 1"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if currentlvl == "level 1":
		nextlvl = "level 2"
		
	if currentlvl == "level 2":
		nextlvl = "level 3"
		
	if currentlvl == "level 3":
		nextlvl = "level 4"
		
	if currentlvl == "level 4":
		nextlvl = "level 5"
