extends Area3D

var vel = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(vel)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position+= transform.basis * Vector3(0,0,-10) * delta

	pass
