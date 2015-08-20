initialization
initialize
	super initialize.
	self color: (Color r: 196 g: 196 b: 196 alpha: 0.5).
	self setToAdhereToEdge: #bottomRight.
	textMorph := TextMorph new contents: '1'.
	self addMorph: textMorph.