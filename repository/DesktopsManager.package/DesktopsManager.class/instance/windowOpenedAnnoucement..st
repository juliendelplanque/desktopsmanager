announcement handling
windowOpenedAnnoucement: announcement
	currentDesktop addWindow: (announcement window).
	announcement window announcer
		when: WindowExpanded send: #windowExpandedAnnouncement: to: self