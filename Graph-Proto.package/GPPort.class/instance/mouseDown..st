event handling
mouseDown: evt

	evt hand
		waitForClicksOrDrag: self
		event: evt
		selectors: #(nil nil nil startDrag:)
		threshold: 5. "pixel"