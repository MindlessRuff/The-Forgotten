extends Area2D

class_name Item

@export var itemRes : InventoryItem
@export var action_name : String = "interact"

@onready var player : Player = get_tree().get_first_node_in_group("Player")

var interact: Callable = func():
	pass


func collect(inventory: Inventory):
	inventory.insert(itemRes)
	SoundManager.play_custom_sound(global_transform, "event:/item_pickup", 0.7)
	queue_free()


func _on_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("interact"):
		pass


func _on_body_entered(_body):
	InteractionManager.register_area(self)


func _on_body_exited(_body):
	InteractionManager.unregister_area(self)
