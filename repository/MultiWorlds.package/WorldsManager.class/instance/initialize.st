as yet unclassified
initialize
	super initialize.
	worlds := OrderedCollection new.
	worlds add: World.
	worldIndex := 1.
	pharoImage := (World submorphs select: [ :m | m class = ImageMorph ]) first