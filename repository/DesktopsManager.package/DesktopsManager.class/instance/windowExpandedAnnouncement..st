announcement handling
windowExpandedAnnouncement: anAnnouncement
	(changedDesktops > 0)
		 "This means it is not the user who clicked on a task."
		ifTrue: [ changedDesktops := changedDesktops - 1 ]
		ifFalse: [ | desktop index |
			Transcript show: 'expanded'; cr.
			desktop := self desktopList
							detect: [ :d | d containsWindow: anAnnouncement window ].
			index := self desktopList indexOf: desktop.
			[ index < desktopIndex ]
				whileTrue: [ self previousDesktop ].
			[ index > desktopIndex ]
				whileTrue: [ self nextDesktop ]. ]