extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process_input(true)


func _input(event):
	if event.is_action_pressed("touch"):
		on_touch()

func on_touch():
	apply_impulse(Vector2(0, 0), Vector2(0, -1000))

