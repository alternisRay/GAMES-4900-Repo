extends Area3D

@export var rotation_speed: float = 180.0  # Degrees per second

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _process(delta: float) -> void:
	# Rotate around Y axis
	rotate_y(deg_to_rad(rotation_speed * delta))

func _on_body_entered(body: Node) -> void:
	if not body.is_in_group("Player"):
		return
	
	print("Coin collected!")
	queue_free()
