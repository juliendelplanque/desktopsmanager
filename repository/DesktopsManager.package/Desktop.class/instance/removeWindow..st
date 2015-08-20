accessing
removeWindow: aWindow
	[ windowList remove: aWindow ] on: NotFound do: []