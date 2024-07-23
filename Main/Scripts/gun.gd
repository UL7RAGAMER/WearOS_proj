class_name Gun
extends Node3D
var bullet = preload("res://Main/Scenes/bullet.tscn")
var m_f = preload("res://Main/Scenes/muzzel_flash.tscn")
var b_t = preload("res://Main/Scenes/bullet_trial.tscn")
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
		b.global_position = $Marker3D.global_position
		$"../../../SubViewport/Bullets".add_child(b)
		pass
		
func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch and !scoped:
		if event.is_pressed():
			shoot(event)
func sniper_ui():
	if Input.is_action_just_pressed("snipe"):
		if !scoped:
			$"../../AnimationPlayer".play("Gun")
			scoped = true
		else:
			$"../../AnimationPlayer".play_backwards("Gun")
			scoped = false
			
