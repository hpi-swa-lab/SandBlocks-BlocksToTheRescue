private accessing
addRessource: aRessource atSymbol: aSymbol
	"should not be used from outside"
	ressourcesBySymbol add: aSymbol->aRessource.
	
	
	