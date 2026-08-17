extends XROrigin3D

var xr_interface : XRInterface

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.initialize():
		print("OpenXR initialized successfully")
		get_viewport().use_xr = true
	else:
		print("OpenXR not initialized. Please connect your Oculus...")
