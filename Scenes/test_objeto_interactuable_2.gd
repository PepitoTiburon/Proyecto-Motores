extends StaticBody3D

var Encendido:bool 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Encendido = false

func _on_ray_cast_3d_has_sido_interactuado(objeto) -> void:
	if objeto == self:
		if !Encendido:
			Encendido = true
			$SpotLight3D.light_energy = 9
		elif Encendido:
			Encendido = false
			$SpotLight3D.light_energy = 0
