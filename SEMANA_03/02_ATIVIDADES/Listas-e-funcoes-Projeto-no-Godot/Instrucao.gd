extends Button
onready var transparencyGrandient = 0
onready var showButton = false
func _ready():
	visible = false
	modulate.a8 = 0
	
func _physics_process(delta):
	modulate(delta)
func modulate(delta):
	if showButton:
		visible = true
		modulate.a = lerp(modulate.a, 1, delta)
	elif not showButton:
		modulate.a = lerp(modulate.a, 0, delta)
		if floor(modulate.a8) == 0:
			visible = false
