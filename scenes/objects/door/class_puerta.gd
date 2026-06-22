class_name Puerta
extends ObjetoInteractuable
@export var bloqueada:bool = false
@export var lockedSound:RaytracedAudioPlayer3D
@export var CloseSound:RaytracedAudioPlayer3D
@export var Open:RaytracedAudioPlayer3D
var esta_abierta: bool = false
var abriendo:bool = false
var tween:Tween
var angulo_apertura: float = deg_to_rad(90) # Convierte 90 grados a radianes

func react() -> void:
	if bloqueada:
		lockedSound.play()
	if not esta_abierta && !bloqueada && !abriendo:
		# Rota a 90 grados en el eje Y
		Open.play()
		abriendo=true
		esta_abierta = true
		tween = create_tween()
		tween.tween_property(self, "rotation:y", rotation.y + angulo_apertura, 0.5)
		await tween.finished
		abriendo=false
	elif !bloqueada && esta_abierta && !abriendo:
		# Vuelve a la posición original
		abriendo = true
		esta_abierta = false
		tween = create_tween()
		tween.tween_property(self, "rotation:y", rotation.y - angulo_apertura, 0.5)
		await tween.finished
		if CloseSound != null:
			CloseSound.play()
		abriendo=false
