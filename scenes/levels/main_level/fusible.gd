extends ObjetoInteractuable
@export var fusible:RaytracedAudioPlayer3D
var activado:bool = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func react() -> void:
	if !activado:
		activado = true
		fusible.play()
		await fusible.finished
		$"../mapa/Decoracion/Enfermeria/Cuadro".bloqueada = false
		$"../mapa/Decoracion/Sotano/Drawer". bloqueada = false
