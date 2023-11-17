extends Node3D

var xr_interface: XRInterface
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	if xr_interface and xr_interface.is_initialized():
		pass
	else:
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
