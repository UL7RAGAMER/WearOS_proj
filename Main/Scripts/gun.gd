extends Node3D
var bullet = preload("res://Main/Scenes/bullet.tscn")
var scoped = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	$"../../../Sniper ui/SniperLookFinderMesaDeTrabajo1".visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	sniper_ui()
	
	
func shoot(event:InputEventScreenTouch):
		var b = bullet.instantiate() as Area3D
		b.position = $Marker3D.position
		add_child(b)
		pass
		
func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		shoot(event)
func sniper_ui():
	if Input.is_action_just_pressed("snipe"):
		if !scoped:
			$"../../AnimationPlayer".play("Gun")
			scoped = true
		else:
			$"../../AnimationPlayer".play_backwards("Gun")
			scoped = false
			
