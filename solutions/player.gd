extends CharacterBody2D

var speed: float = 100.0


func _physics_process(delta: float) -> void:
	# change the velocity based on input
	if Input.is_action_pressed("ui_up"):
		velocity.y = -speed
	if Input.is_action_pressed("ui_down"):
		velocity.y = speed
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	
	move_and_slide()
	
	# reset the velocity
	velocity.x = 0
	velocity.y = 0
	
# non-character body script
#func _process(delta: float) -> void:
	#if Input.is_action_pressed("ui_up"):
		#position.y -= speed * delta
	#if Input.is_action_pressed("ui_down"):
		#position.y += speed * delta
	#if Input.is_action_pressed("ui_left"):
		#position.x -= speed * delta
	#if Input.is_action_pressed("ui_right"):
		#position.x += speed * delta
