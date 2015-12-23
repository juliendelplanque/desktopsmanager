desktop management
previousDesktop
	(desktopIndex > 1) ifTrue: [
		"Close all windows of current desktop"
		currentDesktop collapseWindows.
		"Change desktop"
		currentDesktop setCurrentDesktop: false.
		desktopIndex := desktopIndex - 1.
		self updateCurrentDesktop.
		self desktopChangedByUser
			ifFalse: [ changedDesktops := self currentDesktop windowsCount ]
			ifTrue: [
				changedDesktops := -1.
				self desktopChangedByUser: false ].
		"Open all windows of previous desktop"
		Transcript show: currentDesktop windowList; cr.
		currentDesktop expandWindows.
		self removeUselessDesktops ].