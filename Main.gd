extends Node

@export var mob_scene: PackedScene
var score


func _ready():
	new_game()
	pass # Replace with function body.


func _process(delta):
	pass


func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()


func new_game():
	score = 0
	$Player.start($StartPosition.position)
	$StartTimer.start()


func _on_score_timer_timeout():
	score += 1


func _on_start_timer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()


func _on_mob_timer_timeout():
	var mob = mob_scene.instantiate()
