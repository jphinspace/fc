extends CharacterBody2D

#@export var stats: Resource

var screen_size # Size of the game window.
var movement = Vector2()
var speed = 0
var moving = false
var move_direction = 0.0
var acceleration = 1000
var destination = Vector2()
var symbol = "R"
var max_speed = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	$Label.text = symbol #stats.symbol

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("click"):
		destination = get_global_mouse_position()
		moving = true

func _physics_process(delta):
	if moving == false:
		speed = 0
	else:
		if speed < max_speed:
			speed += acceleration * delta
		else:
			speed = max_speed
	velocity = position.direction_to(destination) * speed
	# look_at(target)
	if position.distance_to(destination) > 10:
		move_and_slide()
	else:
		moving = false
