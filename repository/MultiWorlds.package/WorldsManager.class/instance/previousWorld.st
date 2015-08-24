as yet unclassified
previousWorld
	self hasPreviousWorld
		ifFalse: [ ^self ].
	
	worldIndex := worldIndex - 1.
	(worlds at: worldIndex) install.
	Display restore.
	self cleanUselessWorlds