extends Control

@export var line1 = "3"
@export var line2 = "2"
@export var line3 = "1"
@export var line4 = "GO!"

var txtdelay = 0.35
var pausable = false

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true
	
	$Label.text = line1
	await get_tree().create_timer(txtdelay).timeout
	$Label.text = line2
	await get_tree().create_timer(txtdelay).timeout
	$Label.text = line3
	await get_tree().create_timer(txtdelay).timeout
	$Label.text = line4
	await get_tree().create_timer(txtdelay).timeout
	$Label.text = ""
	
	get_tree().paused = false
	pausable = true

func _physics_process(delta):
	if Input.is_action_just_pressed("Pause") and get_tree().paused == false and pausable == true:
		get_tree().paused = true
		$Pause.visible = true
		
	elif Input.is_action_just_pressed("Pause") and get_tree().paused == true and pausable == true:
		get_tree().paused = false
		$Pause.visible = false
