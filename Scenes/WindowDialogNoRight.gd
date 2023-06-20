extends WindowDialog



func _ready():
	pass # Replace with function body.




func _on_Area2D_area_entered(area):
	if area.get_parent().name.begins_with("NoRight"):
		show()
	pass


func _on_ButtonYes_button_up():
	Global.score += 1
	hide()
	pass 


func _on_ButtonNo_button_up():
	hide()
	if Global.score == 0 :
		Global.score = 0
	else:
		Global.score -= 1
	pass 
