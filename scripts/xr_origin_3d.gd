extends XROrigin3D

var xr_interface : XRInterface

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized successfully")
		get_viewport().use_xr = true
	else:
		print("OpenXR not initialized. Please connect your Oculus...")
func on_area_entered(area_that_entered):
	if area_that_entered == "LeftHandArea":
		area_that_entered.get_parent().trigger_haptic_pulse("haptic", 10.0, 0.5, 0.1, 0)
