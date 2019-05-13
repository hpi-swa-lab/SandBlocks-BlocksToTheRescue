menu
addNestedYellowButtonItemsTo: aMenu event: evt 

	aMenu add: 'inspect morph' translated target: self selector: #inspect.
	self haltOnce.
	aMenu add: 'inspect state' translated target: self state selector: #inspect icon: MenuIcons smallInspectItIcon.