editing
addHandles

	self removeHandles.
	handles := OrderedCollection new.
	vertices withIndexDo: [:vertexPoint :vertexIndex |
		| newHandle |
		newHandle := DockingPortMorph new
			setProperty: #morphicLayerNumber toValue: 85;
			center: vertexPoint.
		newHandle
			on: #mouseMove
			send: #dragVertex:event:fromHandle:
			to: self
			withValue: vertexIndex.
		newHandle
			on: #click
			send: #clickVertex:event:fromHandle:
			to: self
			withValue: vertexIndex.
		newHandle eventHandler wantsEveryMouseMove: true.
		self addMorph: newHandle.
		handles
			addLast: newHandle;
			addLast: Morph new].
	handles removeLast.
	self isCurvy ifTrue: [self updateHandles; layoutChanged].
	self changed.