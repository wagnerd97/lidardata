extends Spatial


# Called when the node enters the scene tree for the first time.
var points = [];

var filePath = ""
var file
var length
var position = 0
var meshTemplate = preload("res://Scenes/meshTemplate.tscn");
var timer = 0
var useTimer = true

func _ready():
	
	self.set_notify_transform(true)
	
	var mesh = meshTemplate.instance();
	add_child(mesh);
	
	get_node("Control/FileDialog").access = 2
	get_node("Control/FileDialog").add_filter("*.dat ; Point Cloud files")
	get_node("Control/FileDialog").current_dir = "res://../../ScansAndPictures"
	get_node("Control/FileDialog").current_file = ""
	get_node("Control/FileDialog").current_path = "res://"
	get_node("Control/FileDialog").popup()
	

func drawPoint(X, Y, Z):
	#print("%7f, %7f, %7f" %[X, Y, Z])
	var newMesh = meshTemplate.instance();
	add_child(newMesh);
	newMesh.visible = true;
	newMesh.translation.x = X*-1;
	newMesh.translation.y = Y;
	newMesh.translation.z = Z*-1;
	#get_node("Camera").set_rotation_degrees(Vector3(get_node("Camera").x_angle, get_node("Camera").y_angle, get_node("Camera").z_angle))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (useTimer == true):
		timer += delta
	
	if Input.is_action_pressed("ui_accept"):
		useTimer = false
	
	if file != null && position < length:
		if useTimer == false:
			finishDraw()
		elif timer >= 0.05:
			timer = 0
			var X = file.get_float()
			var Y = file.get_float()
			var Z = file.get_float()
			position = position + 1
			drawPoint(X, Y, Z)



func _on_FileDialog_file_selected(path):
	print(path)
	file = File.new()
	file.open(path, file.READ)
	length = file.get_len()/12

func finishDraw():
	while position < length:
		var X = file.get_float()
		var Y = file.get_float()
		var Z = file.get_float()
		position = position + 1
		drawPoint(X, Y, Z)
