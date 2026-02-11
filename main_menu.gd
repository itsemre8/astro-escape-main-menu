extends Control

@onready var main_buttons: VBoxContainer = $MainButtons
@onready var options: Panel = $options

func _process(delta):  
	pass

func _ready():
	main_buttons.visible = true
	options.visible = false

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")  

func _on_settings_pressed():  
	print("Settings pressed")
	main_buttons.visible = false
	options.visible = true

func _on_back_options_pressed() -> void:
	_ready()


func _on_button_3_pressed() -> void:
	get_tree().quit()
