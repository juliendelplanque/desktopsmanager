as yet unclassified
keymapNextDesktop
	<shortcut>
	^ KMKeymap
			shortcut: $j control shift
			action: [ WorldsManager uniqueInstance nextWorld ]