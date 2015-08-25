worlds management
createNewWorld
	| newWorld |
	newWorld := WorldMorph new.
	"These next two lines should be fixed but for now it works."
	newWorld installForDesktopManager.
	newWorld addMorph: pharoImage copy.
	(worlds at: worldIndex) install.
	worlds add: newWorld.