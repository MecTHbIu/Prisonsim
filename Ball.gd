
extends Area2D

var speed = Vector2(200, 150)

func _ready():
    randomize()
    speed = speed.rotated(randf() * 2.0 * PI)

func _process(delta):
    position += speed * delta
    
    if position.y < 0 or position.y > get_viewport().size.y:
        speed.y = -speed.y
