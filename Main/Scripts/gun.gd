class_name Gun
extends Node3D
var bullet = preload("res://Main/Scenes/bullet.tscn")

var scoped = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	$"../../../Sniper ui/SniperLookFinderMesaDeTrabajo1".visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	sniper_ui()
	
func shoot(event:InputEventScreenTouch):
		var b = bullet.instantiate() as Area3D
		b.global_position = $"../Marker2D".global_position
		$"../../../SubViewport/Bullets".add_child(b)
		$"Operator valorent4/AnimationPlayer".seek(0)
		$"Operator valorent4/AnimationPlayer".play("Animation",-1,1.5)
		await get_tree().create_timer(1.5214).timeout
		$"Operator valorent4/AnimationPlayer".stop()


		pass
		
func sniper_ui():
	if Input.is_action_just_pressed("snipe"):
		if !scoped:
			$"../../AnimationPlayer".play("Gun")
			scoped = true
		else:
			$"../../AnimationPlayer".play_backwards("Gun")
			scoped = false
			


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	
	if event is InputEventScreenTouch and scoped:
		print(event)
		if event.is_pressed():
			shoot(event)
	pass # Replace with function body.
