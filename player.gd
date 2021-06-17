extends RigidBody2D

var started = false

var playMusic = false

func _physics_process(delta):
	##print(position.y)

	if !playMusic:
		$Music.play()
		playMusic = true

	if Input.is_action_just_pressed("swim"):
		swim_speed()
		if !started:
			start_swim()

	if position.y >= 500:
		linear_velocity.y = 0
		gravity_scale = 0
		$AnimationPlayer.stop()
		
func start_swim():
	started = true
	gravity_scale = 5
	$AnimationPlayer.play("swim")

func swim_speed():
	linear_velocity.y = -200