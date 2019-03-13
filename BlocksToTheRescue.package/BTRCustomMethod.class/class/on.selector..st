as yet unclassified
on: aClass selector: aSymbol

	^ self new
		methodClass: aClass;
		selector: aSymbol;
		install;
		yourself