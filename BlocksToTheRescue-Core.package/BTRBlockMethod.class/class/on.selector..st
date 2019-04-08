instance creation
on: aClass selector: aSymbol

	^ self new
		methodClass: aClass;
		selector: aSymbol;
		yourself