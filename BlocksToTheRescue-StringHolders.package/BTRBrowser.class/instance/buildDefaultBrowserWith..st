toolbuilder
buildDefaultBrowserWith: builder

"Changing windowcolor to better distinguish from normal browsers"
	^ (super buildDefaultBrowserWith: builder)
		setWindowColor: Color lightBrown;
		yourself