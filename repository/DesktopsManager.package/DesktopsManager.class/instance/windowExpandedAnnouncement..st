announcement handling
windowExpandedAnnouncement: anAnnouncement
	Transcript show: 'expand - '; show: anAnnouncement window asString; cr.
	(changedDesktops > 0)
		ifTrue: [ changedDesktops := changedDesktops - 1 ].
	(changedDesktops = -1) "This means it is not the user who clicked on a task."
		ifTrue: [ | desktop index |
			desktop := self desktopList
							detect: [ :d | d containsWindow: anAnnouncement window ].
			index := self desktopList indexOf: desktop.
			[ index < desktopIndex ]
				whileTrue: [ self previousDesktop ].
			[ index > desktopIndex ]
				whileTrue: [ self nextDesktop ].
			desktop setOnTop: anAnnouncement window ]