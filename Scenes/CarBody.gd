extends KinematicBody2D

var speed = Global.speedd  # Adjust the speed value as needed
var rotationSpeed = 180  # Adjust the rotation speed as needed
var hasCollided = false
var health = 3
var heart_full = preload("res://assets/Hearts/hud_heartFull.png")
var heart_empty = preload("res://assets/Hearts/hud_heartEmpty.png")
var hbox: HBoxContainer
var pictures: Array
var currentVisibleIndex = 0

func _ready():
	hbox = get_node("../KinematicBody2D2/HBoxContainer") # Replace "HBoxContainer" with the actual node path or node reference
func gameOver():
	var prevScene = "res://Scenes/GameOverScreen.tscn" # Replace with the path to your next scene
	get_tree().change_scene(prevScene)

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

	motion = motion.normalized() * speed * delta
	var collission = move_and_collide(motion)
	if collission && !hasCollided:
		hasCollided = true
		health -= 1
		if health < 1:
			gameOver()
		else:
			hbox.get_child(health).texture = heart_empty
			print(health)
	elif !collission:
		hasCollided = false

	if motion != Vector2.ZERO:
		rotation = motion.angle() + deg2rad(90)
	

func _on_Area2D_area_entered(area):
	if area.get_parent().name.begins_with("OneWay"):
		print("YES COLLIDED with OneWay")
	pass


func _on_WindowDialog_popup_hide():
	pass # Replace with function body.
