desktop management
previousDesktop
	(desktopIndex > 1) ifTrue: [
		"Close all windows of current desktop"
		currentDesktop windowList do: #collapse.
		"Change desktop"
		currentDesktop setCurrentDesktop: false.
		desktopIndex := desktopIndex - 1.
		self updateCurrentDesktop.
		self desktopChangedByUser
			ifFalse: [ changedDesktops := self currentDesktop windowsCount ]
			ifTrue: [ changedDesktops := -1 ].
		"Open all windows of previous desktop"
		currentDesktop windowList do: #expand.
		self removeUselessDesktops ].