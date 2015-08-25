installation
install
	"Install shortcuts."
	| category |
	category := WorldsCategory named: #WorldsCategory.
	KMRepository default setAsGlobalCategory: category.
	WorldsCategory default: category.