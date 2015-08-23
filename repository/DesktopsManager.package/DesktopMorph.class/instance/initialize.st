initialization
initialize
	super initialize.
	alpha := 0.5.
	self color: (Color r: 196 g: 196 b: 196 alpha: alpha).
	self setToAdhereToEdge: #bottomRight.
	textMorph := TextMorph new contents: '1'.
	self addMorph: textMorph.
	textMorph setToAdhereToEdge: #bottomRight.