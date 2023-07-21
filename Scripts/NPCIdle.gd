extends State
class_name NPCIdle

@export var npc: CharacterBody3D
@onready var smoking = $"../../Body/AnimationPlayer"

var idle_time : float
var player: CharacterBody3D
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func random_idle_time():
	idle_time = randf_range(3,9)
	smoking.play("03_smoking_standing")
	

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
	var direction = player.global_position - npc.global_position

#	if direction.length() < 7:
#		Transitioned.emit(self, "Follow")
