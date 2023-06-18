extends Camera2D	

if motion != Vector2.ZERO:
	rotation = motion.angle() + deg2rad(90)
