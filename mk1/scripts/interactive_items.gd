extends Area3D

@export var haptic_frequency : float = 10.0
@export var haptic_amplitude : float = 0.5
@export var duration : float = 0.1

func on_area_entered(area_that_entered):
	if area_that_entered.name == "LeftHandArea" or area_that_entered.name == "RightHandArea":
		area_that_entered.get_parent().trigger_haptic_pulse("haptic", haptic_frequency, haptic_amplitude, duration, 0)
