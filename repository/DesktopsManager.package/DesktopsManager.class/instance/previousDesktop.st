desktop management
previousDesktop
	(desktopIndex > 1) ifTrue: [
		"Close all windows of current desktop"
		currentDesktop windowList do: [ :window | window hide ].
		"Change desktop"
		currentDesktop setCurrentDesktop: false.
		desktopIndex := desktopIndex - 1.
		self updateCurrentDesktop.
		"Open all windows of previous desktop"
		currentDesktop windowList do: [ :window | window show ].
		self removeUselessDesktops ].