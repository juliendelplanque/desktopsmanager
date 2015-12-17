announcement handling
windowOpenedAnnoucement: announcement
	Transcript show: 'opened'; cr.
	currentDesktop addWindow: (announcement window).
	announcement window announcer
		when: WindowExpanded send: #windowExpandedAnnouncement: to: self