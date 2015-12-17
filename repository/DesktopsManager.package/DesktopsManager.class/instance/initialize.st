initialization
initialize
	super initialize.
	currentDesktop := Desktop new.
	currentDesktop setCurrentDesktop: true.
	desktopList := OrderedCollection new.
	desktopList add: currentDesktop.
	desktopIndex := 1.
	changedDesktops := 0.
	World announcer when: WindowOpened send: #windowOpenedAnnoucement: to: self.
	World announcer when: WindowClosed send: #windowClosedAnnoucement: to: self.