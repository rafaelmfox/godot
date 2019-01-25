extends Node2D

onready var passaro = get_node("passaro")
onready var backanin = get_node("backanin")
onready var time = get_node("TimerToReplay")
onready var label = get_node("Node2D/Control/Label")
onready var somscore = get_node("somscore")
onready var somhit = get_node("somhit")


var pontos = 0
var estado = 1

const JOGANDO = 1
const PERDENDO = 2

func _ready():
	pass


func kill():
	passaro.apply_impulse(Vector2(0,0), Vector2(-1000,0))
	backanin.stop()
	estado = PERDENDO
	time.start()
	somhit.play()


func _on_TimerToReplay_timeout():
	get_tree().reload_current_scene()


func pontuar():
	pontos +=1
	label.set_text(str(pontos))
	somscore.play()




