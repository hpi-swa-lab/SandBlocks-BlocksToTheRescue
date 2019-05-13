updating
buildViewData

	^ Dictionary new
		addAll: {
			#startDock -> self startDock.
			#endDock -> self endDock};
		yourself