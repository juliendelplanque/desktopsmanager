instance access
uniqueInstance
	^ uniqueInstance ifNil: [ uniqueInstance := self class new ]