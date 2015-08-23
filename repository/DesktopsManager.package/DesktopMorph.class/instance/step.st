stepping and presenter
step
	self color: (Color r: 196 g: 196 b: 196 alpha: alpha).
	alpha := alpha - 0.1.
	(alpha closeTo: 0.5)
		ifTrue: [ self stopStepping ]