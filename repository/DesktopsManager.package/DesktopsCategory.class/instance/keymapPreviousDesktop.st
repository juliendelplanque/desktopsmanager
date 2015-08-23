keymaps
keymapPreviousDesktop
	<shortcut>
	^ KMKeymap
			shortcut: $k control shift
			action: [
				DesktopsManager uniqueInstance previousDesktop.
				DesktopMorph uniqueInstance
									desktopNumber: DesktopsManager uniqueInstance desktopIndex asString;
									startStepping ]