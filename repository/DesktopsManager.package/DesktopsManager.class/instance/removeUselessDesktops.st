desktop management
removeUselessDesktops
	| i |
	i := desktopList size.
	[ i > desktopIndex ] whileTrue: [ 
		| desktop |
		desktop := desktopList at: i.
		desktop isUseless ifTrue: [ desktopList removeAt: i ].
		i := i - 1 ]