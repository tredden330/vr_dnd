extends Node3D

var speed = 1.0

var prev_mouse = Vector2(0.0, 0.0)
var sensitivity = 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_forwards"):
		print(rotation, sin(rotation.y))
		position.z += sin(rotation.y)/speed
	if Input.is_action_pressed("move_backwards"):
		position.x += speed
	if Input.is_action_pressed("move_left"):
		position.x += speed
	if Input.is_action_pressed("move_right"):
		position.x += speed
	
func _input(event):
	if event is InputEventMouseMotion:          #detect mouse movement and change rotation
		var difference = prev_mouse - event.position
		print("Mouse Motion at: ", event.position, " change: ", difference)
		rotation_degrees.y += sensitivity * difference.x
		#rotation.x += sensitivity/500 * (difference.y + 2)
		#print(rotation.x)
		prev_mouse = event.position
		
	
