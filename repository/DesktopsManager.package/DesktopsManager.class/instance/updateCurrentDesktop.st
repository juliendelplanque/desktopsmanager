desktop management
updateCurrentDesktop
	currentDesktop := desktopList at: desktopIndex.
	currentDesktop setCurrentDesktop: true.
	self announcer
		announce: (DesktopChanged new
						newDesktop: currentDesktop;
						newDesktopIndex: desktopIndex;
						yourself)