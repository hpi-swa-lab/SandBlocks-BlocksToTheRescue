toolbuilder
buildDefaultBrowserWith: builder

	^ (super buildDefaultBrowserWith: builder)
		updatePaneColors;
		yourself