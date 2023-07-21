extends State
class_name NPCWander

@export var npc: CharacterBody3D
@export var move_speed := 3

var move_direction : Vector3
var wander_time : float

func randomize_wander():
	move_direction = Vector3(randf_range(-1,1), 0, randf_range(-1,1)).normalized()
	wander_time = randf_range(1,2)

func Enter():
	randomize_wander()

func Update(delta: float):
	if wander_time > 0:
		wander_time -= delta
	else:
		randomize_wander()

func Physics_Update(_delta):
	if npc:
		npc.velocity = move_direction * move_speed
