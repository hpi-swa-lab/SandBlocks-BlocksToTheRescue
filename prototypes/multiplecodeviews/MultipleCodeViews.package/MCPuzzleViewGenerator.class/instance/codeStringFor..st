as yet unclassified
codeStringFor: statement

	^ String streamContents: [:s| statement shortPrintOn: s].