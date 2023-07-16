extends Character

@onready var playerCamera = $Camera3D
@onready var ray = $Camera3D/RayCast3D
func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _physics_process(delta):
	inputUpdate(delta)
	move_and_slide()

#Handle player input and player velocity
func inputUpdate(delta):
	
	#Apply gravity when not on floor
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	#Handle movement direction
	var input_dir = Input.get_vector("left", "right", "forward", "back")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	
		#Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = jumpVelocity
	
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed
	
		# Handle Interact with raycast.
	if Input.is_action_just_pressed("interact"):
		ray.force_raycast_update()
		if ray.is_colliding():
			var collider = ray.get_collider()
			if collider.has_method("_on_interact"):
				collider._on_interact()

#Handle Mouse input to camera rotation
func _unhandled_input(event):
	
		if event is InputEventMouseMotion:
			rotate_y(-event.relative.x * .005)
			playerCamera.rotate_x(-event.relative.y * .005)
			playerCamera.rotation.x = clamp(playerCamera.rotation.x, -PI/2, PI/2)
