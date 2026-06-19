extends CharacterBody2D

var time_since_change = 0.0
var time_till_change = 3.0
var direction = Vector2(0, -1)
var speed = 10.0

func _physics_process(delta: float) -> void:
	time_since_change += delta
	if time_since_change > time_till_change:
		direction *= -1
		time_since_change = 0
	velocity = direction * speed
	move_and_slide()
