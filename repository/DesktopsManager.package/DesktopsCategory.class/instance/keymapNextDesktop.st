keymaps
keymapNextDesktop
	<shortcut>
	^ KMKeymap
			shortcut: $j control shift
			action: [
				DesktopsManager uniqueInstance nextDesktop.
				DesktopMorph uniqueInstance
									desktopNumber: DesktopsManager uniqueInstance desktopIndex asString;
									startStepping ]