accessing
changeLanguage
	"Opens a new menu so that the user has the ability to change the language again."
	self delete.
	(self class new position: (self position)) openInWorld.
	