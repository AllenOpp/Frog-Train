#Script for Non-Player-Characters
extends Character

var resource = load("res://Resources/blue_man.dialogue/")

func _ready():
	pass

func _physics_process(_delta):
	pass

func _on_interact():
	print (self.name + " has been interacted with")
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	var dialogue_instance = preload("res://Scenes/UI/dialogue_window.tscn").instantiate()
	dialogue_instance.resource = resource
	add_child(dialogue_instance)

#func _on_player_touch(object):
	#if object == self:
		#Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		#var dialogue_instance = preload("res://Scenes/UI/dialogue_window.tscn").instantiate()
		#dialogue_instance.resource = resource
		#add_child(dialogue_instance)
