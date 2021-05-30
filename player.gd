extends RigidBody2D

var started = false

func _physics_process(delta):
	if Input.is_action_just_pressed("swim"):
		if !started:
			start_swim()
		swim_speed()

func start_swim():
	started = true
	gravity_scale = 5.0
	$AnimationPlayer.play("swim")

func swim_speed():
	linear_velocity.y = -200
