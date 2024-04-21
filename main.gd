extends Node

const CARRIER_SCENE_PATH : String = "res://carrier.tscn"
const CRUISER_SCENE_PATH : String = "res://ship.tscn"
const SUBMARINE_SCENE_PATH : String = "res://submarine.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	var carrier_scene = preload(CARRIER_SCENE_PATH)
	var cruiser_scene = preload(CRUISER_SCENE_PATH)
	var sub_scene = preload(SUBMARINE_SCENE_PATH)
	
	var carrier = carrier_scene.instantiate()
	carrier.position = Vector2(0,0)
	add_child(carrier)
	
	var cruiser = cruiser_scene.instantiate()
	cruiser.position = Vector2(500,500)
	add_child(cruiser)
	
	var sub = sub_scene.instantiate()
	sub.position = Vector2(0,500)
	add_child(sub)
	var sub2 = sub_scene.instantiate()
	sub2.position = Vector2(500,0)
	add_child(sub2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
