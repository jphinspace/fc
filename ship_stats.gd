extends Resource

@export var health: int
@export var sub_resource: Resource
@export var destination: Vector2
@export var max_speed: int
@export var symbol: String

# Make sure that every parameter has a default value.
# Otherwise, there will be problems with creating and editing
# your resource via the inspector.
func _init(p_health = 0, p_sub_resource = null, p_destination = Vector2(), p_speed = 0, p_max_speed = 0, p_symbol = ""):
	health = p_health
	sub_resource = p_sub_resource
	destination = p_destination
	max_speed = p_max_speed
	symbol = p_symbol
