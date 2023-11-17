extends Node3D

var xr_interface: XRInterface

var player

func _ready():
	#choose between vr and normal player
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialised successfully")
		# Turn off v-sync!
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		# Change our main viewport to output to the HMD
		get_viewport().use_xr = true
		
	else:
		print("OpenXR not initialized, please check if your headset is connected")
		player = load("res://not_vr_player.tscn").instantiate()
