as yet unclassified
getMenu: shiftKeyState

	^ MenuMorph fromArray: 
		{{'add node'. #addNode}.
		{'add node ...'. #addNodeChoosingClass}.
		{'inspect graph'. #inspectGraph}}