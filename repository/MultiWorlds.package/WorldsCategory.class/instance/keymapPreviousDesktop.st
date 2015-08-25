keymaps
keymapPreviousDesktop
	<shortcut>
	^ KMKeymap
			shortcut: self previousDesktopShortcut
			action: [ WorldsManager uniqueInstance previousWorld ]