class_name ObjetoInteractuable
extends StaticBody3D

# Método polimórfico abstracto. 
# La clase es abstracta y no se instancia por sí sola
# Solo obliga a los hijos a definir su propio comportamiento.
func react() -> void:
    pass