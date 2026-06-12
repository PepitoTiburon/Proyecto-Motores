# Hereda de nuestra clase custom, no directo de StaticBody
extends ObjetoInteractuable

var encendido: bool
func _ready() -> void:
	encendido = false
# Sobreescribimos el método del padre
func react() -> void:
	encendido = !encendido
	if encendido:
		$SpotLight3D.light_energy = 9
	else:
		$SpotLight3D.light_energy = 0
