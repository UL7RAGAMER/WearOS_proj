extends Node

func _ready():
	if Engine.has_singleton("GodotAndroidPluginTemplate"):
		var plugin = Engine.get_singleton("GodotAndroidPluginTemplate")
		plugin.onCreate()

func _on_timeout_signal(timeout_value):
	print("Timeout value received from Java: ", timeout_value)
	# Send data back to Java
	

		
func processDataFromAndroid(data: String) -> Variant:
	$"../Label2".text = str(data)
	return "Data processed"


func _on_button_pressed() -> void:
	$"../Label2".text = 'asdasdadaasdsadasdasdkashd	'
	if Engine.has_singleton("GodotAndroidPluginTemplate"):
		var plugin = Engine.get_singleton("GodotAndroidPluginTemplate")
		plugin.receiveData(get_instance_id())

func _on_button_2_pressed() -> void:
	$"../Label2".text = 'asdasdada'

	if Engine.has_singleton("GodotAndroidPluginTemplate"):
		var plugin = Engine.get_singleton("GodotAndroidPluginTemplate")
		plugin.setScreenTimeout()

	pass # Replace with function body.
