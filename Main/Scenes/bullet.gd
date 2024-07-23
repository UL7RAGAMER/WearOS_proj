extends Area3D

var vel = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(4).timeout
	queue_free()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation = $"../../Marker3D".rotation
	position+= transform.basis * Vector3(0,0,-100) * delta

	pass
