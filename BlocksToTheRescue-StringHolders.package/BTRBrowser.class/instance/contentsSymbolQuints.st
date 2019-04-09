controls
contentsSymbolQuints

	^ super contentsSymbolQuints ,
	{#-. {self serializedViewerSymbol
		. #toggleSerializedViewer
		. #showingSerializedViewer
		. 'serialized viewer'
		. 'this is a block - show it''s serialized representation' translated}} ,
	(self optionalContentsSymbolQuints 
		ifNotEmpty: [:optionals | {#- . #-}, optionals]
		ifEmpty: [{}])