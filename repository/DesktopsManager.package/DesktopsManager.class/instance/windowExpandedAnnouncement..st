announcement handling
windowExpandedAnnouncement: anAnnouncement
	(changedDesktops ~= -1)
		 "This means it is not the user who clicked on a task."
		ifTrue: [ changedDesktops := changedDesktops - 1 ]
		ifFalse: [ | desktop index |
			desktop := self desktopList
							detect: [ :d | d containsWindow: anAnnouncement window ].
			index := self desktopList indexOf: desktop.
			[ index < desktopIndex ]
				whileTrue: [ self previousDesktop ].
			[ index > desktopIndex ]
				whileTrue: [ self nextDesktop ]. ]