extends CharacterBody3D
class_name Rusty

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
<<<<<<< HEAD
var resource = load("res://Resource/Dialogue/blue_man.dialogue")
=======
#var resource = load("res://scenes/main/blue_man.dialogue")
>>>>>>> 35b395a (lots of shit)

func _physics_process(delta):
	if not self.is_on_floor():
		velocity.y -= gravity * delta
	move_and_slide()
#	animation_player.set("parameters/BlendSpace1D/blend_position", velocity.length() / 3.0)

<<<<<<< HEAD
func _on_interact():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	var dialogue_instance = preload("res://Resource/Dialogue/dialogue_window.tscn").instantiate()
	dialogue_instance.resource = resource
	add_child(dialogue_instance)
=======
func _on_player_touch(object):
	if object == self:
		print("uwu")
#		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
#		var dialogue_instance = preload("res://scenes/main/dialogue_window.tscn").instantiate()
#		dialogue_instance.resource = resource
#		add_child(dialogue_instance)
>>>>>>> 35b395a (lots of shit)
