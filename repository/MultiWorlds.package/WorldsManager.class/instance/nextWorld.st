as yet unclassified
nextWorld
	self isCurrentWorldUsed ifFalse: [ ^self ].
	
	self hasNextWorld
		ifFalse: [
			self createNewWorld ].
	
	worldIndex := worldIndex + 1.
	(worlds at: worldIndex) install.
	Display restore.
	self cleanUselessWorlds