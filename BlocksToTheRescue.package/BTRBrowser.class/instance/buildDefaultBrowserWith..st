as yet unclassified
buildDefaultBrowserWith: builder

"Chaning windowcolor to better distinguish from normal browsers"
	^ (super buildDefaultBrowserWith: builder)
		setWindowColor: Color red;
		yourself
