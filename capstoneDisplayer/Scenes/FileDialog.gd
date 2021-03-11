extends FileDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var _file_dialog
var hasSelection = false
# Called when the node enters the scene tree for the first time.
func _ready():
	#add_tool_menu_item('Find Texture Borders', self, '_do_work')
	
	_file_dialog = FileDialog.new()
	_file_dialog.mode = FileDialog.MODE_OPEN_FILE
	_file_dialog.access = FileDialog.ACCESS_RESOURCES
	# ... more config
	_file_dialog.connect("file_selected", self, "_on_FileDialog_file_selected")
	
	_file_dialog._do_work(self)
	# Other setup code...


func _exit_tree():

	# Cleanup
	_file_dialog.queue_free()


func _do_work(ud):
	_file_dialog.popup_centered_ratio()


func _on_FileDialog_file_selected(path):
	pass
	# Continue work using selected path
