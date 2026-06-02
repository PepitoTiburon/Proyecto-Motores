extends StaticBody3D
var Encendido:bool 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Encendido = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_ray_cast_3d_has_sido_interactuado_2() -> void:
	if !Encendido:
		Encendido = true
		$SpotLight3D.light_energy = 9
		print("apagado")
	elif Encendido:
		print("encender")
		Encendido = false
		$SpotLight3D.light_energy = 0
