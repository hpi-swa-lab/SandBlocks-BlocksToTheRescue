as yet unclassified
addHandles

	self removeHandles.
	handles := OrderedCollection new.
	vertices withIndexDo: [:vertexPoint :vertexIndex |
		| newHandle |
		newHandle := CircleMorph
			newBounds: (6 asPoint corner: (vertexPoint - 3))
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