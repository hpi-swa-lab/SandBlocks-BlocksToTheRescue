toolbuilder
buildDefaultBrowserWith: builder

"Changing windowcolor to better distinguish from normal browsers (if preference is set)"
	^ (super buildDefaultBrowserWith: builder)
		in: [:window | UseThemeBrowserColor
			ifFalse: [window setWindowColor: Color sky]];
		yourself
