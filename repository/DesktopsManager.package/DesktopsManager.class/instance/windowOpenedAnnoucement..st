announcement handling
windowOpenedAnnoucement: announcement
	Transcript show: 'open - '; show: announcement window; cr.
	currentDesktop addWindow: (announcement window).
	announcement window announcer
		when: WindowExpanded send: #windowExpandedAnnouncement: to: self;
		when: WindowActivated send: #windowActivatedAnnouncement: to: self