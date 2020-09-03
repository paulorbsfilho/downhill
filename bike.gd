extends Node2D

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_pressed("pedalar"):
		$front.angular_velocity = 40
		$back.angular_velocity = 40
	if Input.is_action_pressed("frear"):
		$front.angular_velocity = 0
		$back.angular_velocity = 0
	if Input.is_action_pressed("para_tras"):
		$front.angular_velocity = -5
		$back.angular_velocity = -5
	if Input.is_action_pressed("ui_left"):
		$Body.rotate(-0.075)
	if Input.is_action_pressed("ui_right"):
		$Body.rotate(0.075)
	if Input.is_action_just_released("ui_left"):
		$Body.rotate(0)
	if Input.is_action_just_released("ui_right"):
		$Body.rotate(0)
