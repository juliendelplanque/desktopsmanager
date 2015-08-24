as yet unclassified
nextWorld
	self hasNextWorld
		ifFalse: [
			self createNewWorld ].
	
	worldIndex := worldIndex + 1.
	(worlds at: worldIndex) install.
	Display restore