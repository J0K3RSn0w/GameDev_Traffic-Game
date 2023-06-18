extends KinematicBody2D

var speed = 100  # Adjust the speed value as needed

func _process(delta):
	var motion = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		motion.x += 1
	if Input.is_action_pressed("ui_left"):
		motion.x -= 1
	if Input.is_action_pressed("ui_down"):
		motion.y += 1
	if Input.is_action_pressed("ui_up"):
		motion.y -= 1
		
	var otherBody = get_node("../KinematicBody2D")
	
	motion = motion.normalized() * speed * delta
	move_and_collide(motion)
