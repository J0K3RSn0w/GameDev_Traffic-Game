extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var button = $HUD/Button # Replace with the actual path to your button node
	button.connect("pressed", self, "changeScene")

func changeScene():
	var nextScene = "res://Scenes/Map.tscn" # Replace with the path to your next scene
	get_tree().change_scene(nextScene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
