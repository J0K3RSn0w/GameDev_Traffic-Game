extends Node2D

func _ready():
	var buttonRestart = $HUD/RestartButton # Replace with the actual path to your button node
	buttonRestart.connect("pressed", self, "RestartScene")
	var buttonQuit = $HUD/QuitButton # Replace with the actual path to your button node
	buttonQuit.connect("pressed", self, "QuitScene")
	
func RestartScene():
	var nextScene = "res://Scenes/Map.tscn" # Replace with the path to your next scene
	get_tree().change_scene(nextScene)
	
func QuitScene():
	var nextScene = "res://Scenes/StartScene.tscn" # Replace with the path to your next scene
	get_tree().change_scene(nextScene)
