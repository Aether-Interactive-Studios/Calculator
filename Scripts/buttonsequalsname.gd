extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal my_signal
# Called when the node enters the scene tree for the first time.
func _ready():
	$".".text = self.name
	#print(self.name)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_pressed():
	#print('test')
	emit_signal("my_signal",self.name)
	pass # Replace with function body.
