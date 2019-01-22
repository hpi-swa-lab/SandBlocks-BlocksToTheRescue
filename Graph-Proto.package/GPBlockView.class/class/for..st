as yet unclassified
for: aBlockModel
	
	| view |
	view := self new 
		blockModel: aBlockModel;
		build;
		yourself.
	aBlockModel view: view.
	^ view