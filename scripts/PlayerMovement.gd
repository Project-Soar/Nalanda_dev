extends KinematicBody2D

var velocity = Vector2()
var speed = 70



func _process(delta):
	move()
	move_and_slide(velocity)
	
func move():
	velocity = Vector2()
	if Input.is_action_pressed("LEFT"):
		velocity.x = -speed
	if Input.is_action_pressed("RIGHT"):
		velocity.x = speed
	if Input.is_action_pressed("UP"):
		velocity.y =-speed
	if Input.is_action_pressed("DOWN"):
		velocity.y =speed
	velocity = velocity.normalized()*speed


