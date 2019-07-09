as yet unclassified
getMenu: shiftKeyState

	^ MenuMorph fromArray: 
		{{'add edge'. #addEdge}.
		{'delete'. #delete}.
		{'inspect node'. #inspectNode}}