extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 50
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	linear_velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		linear_velocity += Vector2(speed, 0)
	if Input.is_action_pressed("ui_left"):
		linear_velocity += Vector2(-speed, 0)
	if Input.is_action_pressed("ui_up"):
		linear_velocity += Vector2(0, -speed)
	if Input.is_action_pressed("ui_down"):
		linear_velocity += Vector2(0, speed)
		
func eat():
	var sprite=self.get_node("./Health")
	sprite.scale+=Vector2(0.1,0.1)
	var shape=self.get_node("./CollisionShape2D")
	shape.scale+=Vector2(0.2,0.2)
