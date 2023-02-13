extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=200*delta
	rotate(0.1)
	
	if position.y>800:
		get_parent().add()
		queue_free()


func _on_body_entered(body):
	body.get_parent().gameOver()
