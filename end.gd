extends Control

func _ready():
	SoundManager.play_custom_sound(null, "event:/end", 1)
