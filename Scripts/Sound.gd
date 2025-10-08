extends Node

# Create temp player, play and delete
func play_sound(sound: AudioStream) -> void:
	var temp_player: AudioStreamPlayer2D = AudioStreamPlayer2D.new()
	temp_player.stream = sound
	temp_player.connect("finished", Callable(temp_player, "queue_free"))
	
	add_child(temp_player)
	temp_player.play()
