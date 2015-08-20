desktop management
nextDesktop
	currentDesktop windowList isEmpty ifFalse: [
		"Close all windows of current desktop"
		currentDesktop windowList do: [ :window | window hide ].
		"Change desktop"
		desktopIndex := desktopIndex + 1.
		(desktopIndex > desktopList size)
			ifTrue: [ desktopList add: Desktop new ].
		currentDesktop setCurrentDesktop: false.
		self updateCurrentDesktop.
		"Open all windows of next desktop"
		currentDesktop windowList do: [ :window | window show ].
		self removeUselessDesktops ]