toolbuilder
buildDefaultBrowserWith: builder

"Changing windowcolor to better distinguish from normal browsers (if preference is set)"
	^ (super buildDefaultBrowserWith: builder)
		in: [:window | self class useThemeBrowserColor
			ifFalse: [window setWindowColor: Color sky]];
		yourself
