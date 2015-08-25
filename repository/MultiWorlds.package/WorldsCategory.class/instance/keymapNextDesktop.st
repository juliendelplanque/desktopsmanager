keymaps
keymapNextDesktop
	<shortcut>
	^ KMKeymap
			shortcut: self nextDesktopShortcut
			action: [ WorldsManager uniqueInstance nextWorld ]