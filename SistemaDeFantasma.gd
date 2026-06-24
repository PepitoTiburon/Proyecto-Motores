extends Node3D
class_name GhostSystem
var tween:Tween
@export var player:CharacterBody3D
@export var timer:Timer
@export var GhostSoundIdle:RaytracedAudioPlayer3D
@export var GhostSoundAgressive:RaytracedAudioPlayer3D
@export var GhostLeaves:RaytracedAudioPlayer3D
@export var habitaciones:Array[Area3D] 
var HabitacionesAtacables:int
var HabitacionElegida:int
var GhostDetectedYou:bool
var previouslyChosen:int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#mueve todas las habitaciones 10m para arriba
	for hab in habitaciones:
		hab.position = Vector3(hab.position.x,hab.position.y + 10,hab.position.z)
	timer.timeout.connect(timerTimeout)
	HabitacionesAtacables = habitaciones.size()
	
	#elige Habitacion y se conecta a ella
	HabitacionElegida=randi_range(0, HabitacionesAtacables-1)
	previouslyChosen = HabitacionElegida
	habitaciones[HabitacionElegida].body_entered.connect(bodyEnterd)
	print(HabitacionElegida)
	
	#mueve el sonido a la habitacion elegida
	GhostSoundIdle.position = Vector3(habitaciones[HabitacionElegida].position.x,habitaciones[HabitacionElegida].position.y + 1,habitaciones[HabitacionElegida].position.z)
	GhostSoundAgressive.position = Vector3(habitaciones[HabitacionElegida].position.x,habitaciones[HabitacionElegida].position.y + 1,habitaciones[HabitacionElegida].position.z)
	GhostLeaves.position = Vector3(habitaciones[HabitacionElegida].position.x,habitaciones[HabitacionElegida].position.y + 1,habitaciones[HabitacionElegida].position.z)
	

func timerTimeout() -> void:
	if GhostDetectedYou:
		GhostLeaves.play()
		GhostDetectedYou = false
	habitaciones[HabitacionElegida].body_entered.disconnect(bodyEnterd)
	tween = create_tween()
	tween.tween_property(habitaciones[HabitacionElegida], "position", Vector3(
	habitaciones[HabitacionElegida].position.x,
	habitaciones[HabitacionElegida].position.y + 10,
	habitaciones[HabitacionElegida].position.z
	), 0.5)
	await  tween.finished
	var new_choice = randi_range(0, HabitacionesAtacables - 1)
	while new_choice == previouslyChosen:
		print("chosen ", new_choice, " redoing..")
		new_choice = randi_range(0, HabitacionesAtacables - 1)
	HabitacionElegida = new_choice
	previouslyChosen = HabitacionElegida
	habitaciones[HabitacionElegida].body_entered.connect(bodyEnterd)
	print(HabitacionElegida)
	GhostSoundIdle.position = Vector3(habitaciones[HabitacionElegida].position.x,habitaciones[HabitacionElegida].position.y + 1,habitaciones[HabitacionElegida].position.z)
	GhostSoundAgressive.position = Vector3(habitaciones[HabitacionElegida].position.x,habitaciones[HabitacionElegida].position.y + 1,habitaciones[HabitacionElegida].position.z)
	GhostLeaves.position = Vector3(habitaciones[HabitacionElegida].position.x,habitaciones[HabitacionElegida].position.y + 1,habitaciones[HabitacionElegida].position.z)
	tween = create_tween()
	tween.tween_property(habitaciones[HabitacionElegida], "position", Vector3(
	habitaciones[HabitacionElegida].position.x,
	habitaciones[HabitacionElegida].position.y - 10,
	habitaciones[HabitacionElegida].position.z
	), 0.5)
	await  tween.finished
	GhostSoundIdle.play()
func bodyEnterd(body) -> void:
	if body != player:
		return
	print(body, " Enterd ", HabitacionElegida)
	GhostSoundAgressive.play()
	GhostDetectedYou = true
	
