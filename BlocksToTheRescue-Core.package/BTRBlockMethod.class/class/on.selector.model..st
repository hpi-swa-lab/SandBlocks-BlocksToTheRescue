instance creation
on: aClass selector: aSymbol model: aBTRBlockModel

	^ self new
		methodClass: aClass;
		selector: aSymbol;
		blockModel: aBTRBlockModel;
		yourself