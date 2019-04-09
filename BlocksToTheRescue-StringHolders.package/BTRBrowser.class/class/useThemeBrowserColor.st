as yet unclassified
useThemeBrowserColor

	<preference: 'Use theme Browser color'
		category: 'Blocks to the rescue'
		description: 'When true, use default theme window color for BTRBrowser'
		type: #Boolean>
	^ UseThemeBrowserColor ifNil: [false]