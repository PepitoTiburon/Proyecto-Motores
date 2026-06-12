extends StaticBody3D




func _on_ray_cast_3d_has_sido_interactuado(objeto) -> void:
	if objeto == self:
		$RaytracedAudioPlayer3D.play()
