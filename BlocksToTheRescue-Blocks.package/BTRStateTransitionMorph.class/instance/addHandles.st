editing
addHandles

	self removeHandles.
	handles := OrderedCollection new.
	vertices withIndexDo: [:vertexPoint :vertexIndex |
		| newHandle |
		newHandle := CircleMorph new
			setProperty: #morphicLayerNumber toValue: 85;
			extent: self dockingPointRadius asPoint * 2;
			center: vertexPoint;
			color: Color gray.
		newHandle
			on: #mouseMove
			send: #dragVertex:event:fromHandle:
			to: self
			withValue: vertexIndex.
		newHandle
			on: #mouseUp
			send: #dropVertex:event:fromHandle:
			to: self
			withValue: vertexIndex.
		newHandle
			on: #click
			send: #clickVertex:event:fromHandle:
			to: self
			withValue: vertexIndex.
		self addMorph: newHandle.
		handles
			addLast: newHandle;
			addLast: Morph new].
	self isCurvy ifTrue: [self updateHandles; layoutChanged].
	self changed.