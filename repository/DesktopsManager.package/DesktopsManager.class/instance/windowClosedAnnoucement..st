announcement handling
windowClosedAnnoucement: announcement
	desktopList do: [ :desktop | desktop removeWindow: announcement window ]