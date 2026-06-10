class_name VelocityComponent
extends Node

@export var speed : int

@onready var target : CharacterBody2D = get_parent()

# Called when the node enters the scene tree for the first time.
func move (delta: float, direction: Vector2) -> void:
	if direction:
		target.velocity = direction * speed
	else:
		target.velocity.x = move_toward(target.velocity.x, 0, speed)
		target.velocity.y = move_toward(target.velocity.x, 0, speed)		
