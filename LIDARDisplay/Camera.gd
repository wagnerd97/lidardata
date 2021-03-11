extends Camera

# Declare member variables here. Examples:
var x_angle = 0;
var y_angle = 90;
var z_angle = 0;

var x_position = 0;
var y_position = 0;
var z_position = 0;


# Called when the node enters the scene tree for the first time.
func _ready():
	set_rotation_degrees(Vector3(x_angle, y_angle, z_angle));

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	delta = delta * 60;
	if Input.is_action_pressed("ui_left"):
		y_angle += delta;
		set_rotation_degrees(Vector3(x_angle, y_angle, z_angle));
	elif Input.is_action_pressed("ui_right"):
		y_angle -= delta;
		set_rotation_degrees(Vector3(x_angle, y_angle, z_angle));
	elif Input.is_action_pressed("ui_up"):
		x_angle += delta;
		set_rotation_degrees(Vector3(x_angle, y_angle, z_angle));
	elif Input.is_action_pressed("ui_down"):
		x_angle -= delta;
		set_rotation_degrees(Vector3(x_angle, y_angle, z_angle));
	elif Input.is_action_pressed("ui_w"):
		translate(Vector3(0, 0, -delta));
	elif Input.is_action_pressed("ui_s"):
		translate(Vector3(0, 0, delta));
	elif Input.is_action_pressed("ui_a"):
		translate(Vector3(-delta, 0, 0));
	elif Input.is_action_pressed("ui_d"):
		translate(Vector3(delta, 0, 0));
	elif Input.is_action_pressed("ui_space"):
		translate(Vector3(0, delta, 0));
	elif Input.is_action_pressed("ui_shift"):
		translate(Vector3(0, -delta, 0));
