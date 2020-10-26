extends Node2D

#1
var F1X1 = 43;
var F1Y1 = 0;

var F1X2 = 43;
var F1Y2 = -25;

#2
var F2X1 = 43;
var F2Y1 = 0;

var F2X2 = 43;
var F2Y2 = 20;

#3
var B1X1 = -45;
var B1Y1 = 0;

var B1X2 = -45;
var B1Y2 = -20;

#4
var B2X1 = -45;
var B2Y1 = 0;

var B2X2 = -45;
var B2Y2 = 20;

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
		$bike/Body.apply_impulse(Vector2(F1X1, F1Y1),Vector2(F1X2,F1Y2))
		$bike/Body.apply_impulse(Vector2(B2X1, B2Y1),Vector2(B2X2,B2Y2))
	if Input.is_action_pressed("ui_right"):
		$bike/Body.apply_impulse(Vector2(B1X1, B1Y1),Vector2(B1X2,B1Y2))
		$bike/Body.apply_impulse(Vector2(F2X1, F2Y1),Vector2(F2X2,F2Y2))
