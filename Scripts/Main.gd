extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func my_signal(num):
	print(num)
	pass # Replace with function body.


func on_my_signal(num):
	if (Globals.state == 1 and num == "*") or (Globals.state == 1 and num == "+") or (Globals.state == 1 and num == "-"):
		$Display.text += num
		Globals.state = 0
	else:
			
		if num == "=":
			var expression = Expression.new()
			expression.parse($Display.text)
			$Display.text = str(expression.execute())
			Globals.state = 1
		else:
			if Globals.state==1:
				$Display.text = ""
				Globals.state = 0
			print(num)
			$Display.text += num
	pass # Replace with function body.
