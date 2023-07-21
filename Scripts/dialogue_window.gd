extends CanvasLayer
var resource
var chat_title
var char_label_color

func _ready():
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 9c2bfce (working dialogue and state machines)
	get_tree().paused = true
	DialogueManager.dialogue_ended.connect(dialogue_finished)
	print(resource)
	if resource == null:
		dialogue_finished(resource)
	else:
		DialogueManager.show_example_dialogue_balloon(resource, "test_convo")
<<<<<<< HEAD

func dialogue_finished(_resource: DialogueResource):
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	get_tree().paused = false
	queue_free()
=======
	pass
#	get_tree().paused = true
#	DialogueManager.dialogue_ended.connect(dialogue_finished)
#	if resource == null:
#		dialogue_finished(resource)
#	else:
#		DialogueManager.show_example_dialogue_balloon(resource, "this_is_a_node_title")

#func dialogue_finished(_resource: DialogueResource):
#	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
#	get_tree().paused = false
#	queue_free()
>>>>>>> 35b395a (lots of shit)
=======

func dialogue_finished(_resource: DialogueResource):
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	get_tree().paused = false
	queue_free()
>>>>>>> 9c2bfce (working dialogue and state machines)
	
