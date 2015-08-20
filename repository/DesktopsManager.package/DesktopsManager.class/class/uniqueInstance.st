instance access
uniqueInstance
	^ uniqueInstance ifNil: [ uniqueInstance := DesktopsManager new ]