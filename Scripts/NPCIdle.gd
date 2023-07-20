extends State
class_name NPCIdle

@export var npc: CharacterBody3D
<<<<<<< HEAD
@onready var smoking = $"../../Body/AnimationPlayer"

=======
>>>>>>> 3c13fc0 (textures and state)
var idle_time : float
var player: CharacterBody3D
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

<<<<<<< HEAD

func random_idle_time():
	idle_time = randf_range(3,9)
	smoking.play("03_smoking_standing")
	
=======
func random_idle_time():
	idle_time = randf_range(3,4)
>>>>>>> 3c13fc0 (textures and state)

func Enter():
	print("I went Idle")
	player = get_tree().get_first_node_in_group("Player")
	random_idle_time()
	
func Exit():
	print("Leaving Idle")

func Update(delta: float):
	if idle_time > 0:
		idle_time -= delta
	else:
		random_idle_time()

func Physics_Update(delta):
	if not npc.is_on_floor():
		npc.velocity.y -= gravity * delta
<<<<<<< HEAD
	#dvar direction = player.global_position - npc.global_position

#	if direction.length() < 7:
#		Transitioned.emit(self, "Follow")
=======
	var direction = player.global_position - npc.global_position

	if direction.length() < 7:
		Transitioned.emit(self, "Follow")
>>>>>>> 3c13fc0 (textures and state)
