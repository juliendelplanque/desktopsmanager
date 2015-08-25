installation
install
	"Install if shortcuts if not already done, else do nothing."
	IsInstalled ifFalse: [
		KMRepository default setAsGlobalCategory: self uniqueInstance.
		IsInstalled := true ]