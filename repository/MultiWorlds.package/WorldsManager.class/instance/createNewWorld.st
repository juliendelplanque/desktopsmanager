as yet unclassified
createNewWorld
	| newWorld |
	newWorld := WorldMorph new.
	"These next two lines should be fixed but for now it works."
	newWorld installForDesktopManager.
	(worlds at: worldIndex) install.
	worlds add: newWorld.