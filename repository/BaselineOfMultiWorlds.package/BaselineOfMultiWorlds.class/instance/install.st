installation
install
	"Install shortcuts."
	| category |
	category := WorldsCategory new.
	KMRepository default setAsGlobalCategory: category.
	WorldsCategory default: category.