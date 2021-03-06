desktop management
addOpenedWindowsToDesktop
	"Add opened windows from World submorphs and add them the first desktop."
	| windows |
	windows := World submorphs select: [ :morph |
					morph class = SystemWindow or: [ SystemWindow allSubclasses contains: [ :class | class = morph class ] ] ].
	self currentDesktop addAllWindows: windows.
	windows do: [ :window |
		window announcer
			when: WindowExpanded send: #windowExpandedAnnouncement: to: self;
			when: WindowActivated send: #windowActivatedAnnouncement: to: self ]