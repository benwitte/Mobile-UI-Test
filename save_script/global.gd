extends Node


var saveData:SaveData



func _ready():
	saveData = SaveData.load_or_create()


