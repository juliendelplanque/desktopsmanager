announcement handling
windowClosedAnnoucement: announcement
	Transcript show: 'closed'; cr.
	desktopList do: [ :desktop | desktop removeWindow: announcement window ].
	announcement window announcer unsubscribe: self