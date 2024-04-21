extends Node

@export var ship_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var carrier = ship_scene.instantiate()
	carrier.stats.symbol = "C"
	carrier.stats.max_speed = 10
	carrier.position = Vector2(0,0)
	add_child(carrier)
	var cruiser = ship_scene.instantiate()
	cruiser.stats.symbol = "R"
	cruiser.stats.max_speed = 50
	cruiser.position = Vector2(500,500)
	add_child(cruiser)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
