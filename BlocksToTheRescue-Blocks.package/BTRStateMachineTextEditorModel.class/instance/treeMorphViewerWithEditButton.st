views
treeMorphViewerWithEditButton

	^ self treeMorphViewer
		layoutPolicy: ProportionalLayout new;
		addMorph: self editButton;
		yourself.