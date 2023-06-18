extends Sprite

export var rotation_speed = 1.0

var rotation_degrees1 = 0.0

func _process(delta):
	rotation_degrees1 += rotation_speed * delta
	while rotation_degrees1 >= 360.0:
		rotation_degrees1 -= 360.0
	rotation = rotation_degrees1
