as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'DesktopsManager';
				postLoadDoIt: #install ]
