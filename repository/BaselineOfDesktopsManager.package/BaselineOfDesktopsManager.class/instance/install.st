as yet unclassified
install
	"Add all opened windows the the first desktop"
	DesktopsManager uniqueInstance addOpenedWindowsToDesktop.
	"Install shortcuts"
	KMRepository default setAsGlobalCategory: DesktopsCategory new.
	"Open the DesktopMorph"
	DesktopMorph uniqueInstance openInWorld.
	
	UIManager default inform: 'DesktopsManager has been successfully installed.'