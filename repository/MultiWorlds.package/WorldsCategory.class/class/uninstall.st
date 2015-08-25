installation
uninstall
	"Uninstall if shortcuts if installed, else do nothing."
	IsInstalled ifTrue: [
		KMRepository default globalCategories remove: self uniqueInstance.
		IsInstalled := false ]