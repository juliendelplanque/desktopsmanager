as yet unclassified
setOnTop: aWindow
	self windowList remove: aWindow.
	self addWindow: aWindow