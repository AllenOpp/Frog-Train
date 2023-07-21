extends State
class_name NPCFollow

@export var npc: CharacterBody3D
@export var move_speed := 2.0
var player: CharacterBody3D
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func Enter():
	player = get_tree().get_first_node_in_group("Player")
	
func Exit():
	npc.velocity = Vector3(0,0,0)
	print("Leaving Follow")

func Physics_Update(delta: float):
	if not npc.is_on_floor():
		npc.velocity.y -= gravity * delta
	
	var direction = player.global_position - npc.global_position
	npc.look_at(player.global_position)
	
	
	if direction.length() > 2:
		npc.velocity = direction.normalized() * move_speed
	else:
		npc.velocity = Vector3()

	if direction.length() > 7:
		Transitioned.emit(self, "Idle")
