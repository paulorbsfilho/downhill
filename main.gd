extends Node2D

#front
var FX1 = 0;
var FX2 = -10;
var FY1 = -30;
var FY2 = -30;

#back
var BX1 = 0;
var BX2 = 10;
var BY1 = -30;
var BY2 = -30;

func _ready():
	pass # Replace with function body.

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_pressed("pedalar"):
		$bike/front.angular_velocity = 40
		$bike/back.angular_velocity = 40
	if Input.is_action_pressed("frear"):
		$bike/front.angular_velocity = 0
		$bike/back.angular_velocity = 0
	if Input.is_action_pressed("para_tras"):
		$bike/front.angular_velocity = -5
		$bike/back.angular_velocity = -5
	if Input.is_action_pressed("ui_left"):
		$bike/Body.apply_impulse(Vector2(FX1, FY1),Vector2(FX2,FY2))
	if Input.is_action_pressed("ui_right"):
		$bike/Body.apply_impulse(Vector2(BX1, BY1),Vector2(BX2,BY2))
		#$bike/back.apply_impulse(Vector2(0, 0),Vector2(0, 250))
#	if Input.is_action_just_released("ui_left"):
#		$bike/Body.apply_impulse(Vector2(0, 250),Vector2(0, 250))
#	if Input.is_action_just_released("ui_right"):
#		$bike/Body.apply_impulse(Vector2(0, 250),Vector2(0, 250))
