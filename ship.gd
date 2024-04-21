extends CharacterBody2D

@export var stats: Resource

var screen_size # Size of the game window.
var movement = Vector2()
var speed = 0
var moving = false
var move_direction = 0.0
var acceleration = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	$Label.text = stats.symbol
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("click"):
		stats.destination = get_global_mouse_position()
		moving = true

func _physics_process(delta):
	if moving == false:
		speed = 0
	else:
		if speed < stats.max_speed:
			speed += acceleration * delta
		else:
			speed = stats.max_speed
	velocity = position.direction_to(stats.destination) * speed
	# look_at(target)
	if position.distance_to(stats.destination) > 10:
		move_and_slide()
	else:
		moving = false
