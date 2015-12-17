announcement handling
windowClosedAnnoucement: announcement
	desktopList do: [ :desktop | desktop removeWindow: announcement window ].
	announcement window announcer unsubscribe: self