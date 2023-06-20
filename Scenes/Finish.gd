extends Node2D


func _ready():
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	if area.get_parent().name.begins_with("Finish"):
		var prevScene = "res://Scenes/GameOverScreen.tscn" # Replace with the path to your next scene
		get_tree().change_scene(prevScene)
	pass
