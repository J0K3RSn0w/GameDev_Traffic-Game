extends Label


func _process(delta):
	if Global.score >= 5 :
		self.text =  str("YOU PASSED")
	else:
		self.text =  str("YOU FAILED")
	
