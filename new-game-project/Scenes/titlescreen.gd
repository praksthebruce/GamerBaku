extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	print("START BUTTON WORKS")

	var error = get_tree().change_scene_to_file("res://Level_scene.tscn")
	print("Scene change error: ", error)


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level_scene.tscn")
	get_tree().quit()	

	
