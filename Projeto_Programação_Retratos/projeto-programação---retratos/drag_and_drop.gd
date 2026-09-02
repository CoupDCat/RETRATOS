extends Sprite2D
var dragging : bool = false
var of : Vector2 = Vector2(0,0)
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var area_2d: Area2D = $Area2D
 
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of
 
 
 
func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			audio_stream_player_2d.play()
			dragging = true
		else:
			audio_stream_player_2d.play()
			dragging = false
