extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		Global.dumplings_collected += 1

		if Global.dumplings_collected >= Global.dumplings_needed:
			print("LEVEL COMPLETE!")

		hide()
		$CollisionShape2D.set_deferred("disabled", true)

		await get_tree().create_timer(5.0).timeout

		show()
		$CollisionShape2D.set_deferred("disabled", false)
