extends Spatial

"""
Q: Why do you divide the speed by 2 instead of entering the divided value?
A: Idk if for example the speed is 0.25, the trail is not correct. And if the speed is 0.5/2 then the trail is correct.

Q: Why do you multiply the speed by the delta and then divide it by the delta again?
A: If it is not multiplied by the delta, then the movement will be strange (teleporting, jumping, skipping, or speeding up suddenly). Now after multiplied by the delta, the movement slows down, so I divide it by the delta again so that the movement returns to what it was supposed to
"""

func _process(delta):
	if Input.is_action_pressed("w"):
		$Viewport/Sprite.position.y -= 12.5/2 * delta / 0.016667
		$Viewport/Sprite.show()
		$ball.translation.z -= 0.5/2
	if Input.is_action_pressed("s"):
		$Viewport/Sprite.position.y += 12.5/2 * delta / 0.016667
		$Viewport/Sprite.show()
		$ball.translation.z += 0.5/2
	if Input.is_action_pressed("a"):
		$Viewport/Sprite.position.x -= 12.5/2 * delta / 0.016667
		$Viewport/Sprite.show()
		$ball.translation.x -= 0.5/2
	if Input.is_action_pressed("d"):
		$Viewport/Sprite.position.x += 12.5/2 * delta / 0.016667
		$Viewport/Sprite.show()
		$ball.translation.x += 0.5/2

func _input(event):
	if event is InputEventKey and !event.pressed:
		$Viewport/Sprite.hide()
