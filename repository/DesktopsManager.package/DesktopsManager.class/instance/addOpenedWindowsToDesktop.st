desktop management
addOpenedWindowsToDesktop
	"Add opened windows from World submorphs and add them the first desktop."
	| windows |
	windows := World submorphs select: [ :morph | SystemWindow allSubclasses contains: [ :class | class = morph class ] ].
	self currentDesktop addAllWindows: windows