@tool
extends Node3D
class_name Enemy
@export var alebedo : Color

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("mixamo_com")
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var base_low_poly_man: MeshInstance3D = $Skeleton3D/Mesh
	
	base_low_poly_man.mesh.surface_get_material(0).set_albedo(alebedo)
	pass
