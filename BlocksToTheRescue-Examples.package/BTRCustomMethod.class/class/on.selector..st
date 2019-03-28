as yet unclassified
on: aClass selector: aSymbol

	^ (self selector: aSymbol)
		methodClass: aClass;
		install;
		yourself