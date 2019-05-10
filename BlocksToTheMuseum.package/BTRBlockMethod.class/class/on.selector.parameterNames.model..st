instance creation
on: aClass selector: aSymbol parameterNames: aSequencableCollection model: aBTRBlockModel

	^ self new
		methodClass: aClass;
		selector: aSymbol;
		parameterNames: aSequencableCollection;
		blockModel: aBTRBlockModel;
		yourself