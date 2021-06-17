extends Node

var rock_scene = load("res://rock1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_spawn_rock()

func _spawn_rock():
	var rock = rock_scene.instance()

	_set_rock_position(rock)

	add_child(rock)


func _set_rock_position(rock):
	var rect = get_viewport().size
	rock.position = Vector2(250, rand_range(-10, 400))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_SpawnTimer_timeout() -> void:
	_spawn_rock()
