extends Node
@onready var meteoro =preload("res://area_2d.tscn")

func _on_button_pressed():
	get_tree().reload_current_scene()



func _on_timer_timeout():
	var newme=meteoro.instantiate()
	newme.position.x=randf_range(0,1200)
	add_child(newme)

func add():
	$Chain1.newPoint()
