desktop management
nextDesktop
	currentDesktop windowList isEmpty ifFalse: [
		"Close all windows of current desktop"
		currentDesktop windowList do: #collapse.
		"Change desktop"
		desktopIndex := desktopIndex + 1.
		(desktopIndex > desktopList size)
			ifTrue: [ desktopList add: Desktop new ].
		currentDesktop setCurrentDesktop: false.
		self updateCurrentDesktop.
		changedDesktops := self currentDesktop windowsCount.
		"Open all windows of next desktop"
		currentDesktop windowList do: #expand.
		self removeUselessDesktops ]