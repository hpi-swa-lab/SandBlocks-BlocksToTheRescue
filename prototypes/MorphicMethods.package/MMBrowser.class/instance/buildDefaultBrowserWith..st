as yet unclassified
buildDefaultBrowserWith: builder

	| window |
	window := super buildDefaultBrowserWith: builder.	
	MMPluggableTextMorph adoptInstance:(builder widgetAt: #textField).
	^ window