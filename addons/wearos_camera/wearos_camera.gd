@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type("WearOS_Camera","Camera2D",preload("res://camera_2d.gd"),preload("res://icon.svg"))
	# Initialization of the plugin goes here.
	pass


func _exit_tree() -> void:
	remove_custom_type("WearOS_Camera")
	# Clean-up of the plugin goes here.
	pass
