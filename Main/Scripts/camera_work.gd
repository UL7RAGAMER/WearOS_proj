extends Marker3D
var cur_pos = Vector3.ZERO
var last_pos = Vector3.ZERO
@onready var gun: Gun = %Gun
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	lock_camera()
	rotaing_camera(5)

func _input(event: InputEvent) -> void:
	if event is InputEventScreenDrag and !(gun.scoped):
		#scroll(event)
		pass
func rotaing_camera(deg:int) -> void:
	if Input.is_action_just_released("left") and !(gun.scoped):
		rotation_degrees.y+=deg
	elif Input.is_action_just_released("right") and !(gun.scoped):
		rotation_degrees.y+=-deg
	pass
func lock_camera() -> void:
	if position.y>11:
		position.y = 11
	elif position.y<0:
		position.y = 0	
	pass
	
func scroll(event:InputEventScreenDrag):
	var o:Vector2
	if Input.is_action_just_pressed("lmb"):
		print('asd')
		o = event.position
	if Input.is_action_pressed("lmb"):
		print((event.position.y - o.y))

		position.y += (event.position.y - o.y)*10
		
