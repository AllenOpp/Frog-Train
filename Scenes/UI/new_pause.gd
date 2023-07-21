extends CanvasLayer

const main_menu := "res://Scenes/Levels/Sandbox.tscn"
#const loading := "res://scenes/assets_only/loading/loading.tscn"

func _ready():
	get_tree().paused = true

func _on_resume_pressed():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	get_tree().paused = false
	queue_free()

func _on_quit_pressed():
	get_tree().quit()

func _on_main_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file(main_menu)
