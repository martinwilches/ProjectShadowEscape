extends Node2D # el script hereda de Node2D. Puede utilizar las propiedades y funcionalidades de este tipo de nodo

@onready var label_start: Label = $PressEnter

# funcion que Godot ejecuta cuando el nodo esta listo dentro del SceneTree
func _ready() -> void:
	print("Project Shadow Escape iniciado")

# cambiar el texto de inicio del juego al pulsar la tecla enter	
func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_action_pressed("confirm"):
		print(Time.get_datetime_string_from_system())
		label_start.text = "GAME STARTED!"
