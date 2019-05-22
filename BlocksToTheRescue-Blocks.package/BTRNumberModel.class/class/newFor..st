instance creation
newFor: anObject

	| views |
	views := self userSelectBlockView.
	^ self new
		value: anObject;
		viewDataAt: #inlineView put: views first;
		viewDataAt: #editorView put: views second;
		yourself
		