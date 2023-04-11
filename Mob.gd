extends RigidBody2D

func _ready():
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])


func _process(delta):
	pass


func _on_visible_on_screen_enabler_2d_screen_entered():
	queue_free()
