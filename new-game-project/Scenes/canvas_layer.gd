extends CanvasLayer

@onready var counter: Label = $DumplingCounter

func _process(_delta: float) -> void:
	counter.text = "Dumplings: " + str(Global.dumplings_collected)
