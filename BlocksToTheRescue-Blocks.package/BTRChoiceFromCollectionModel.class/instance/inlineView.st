as yet unclassified
inlineView

	^ (PluggableButtonMorphPlus 
		on: self 
		getState: nil 
		action: nil
		label:  #value)
			in: [:button | button action: [self index: (UIManager default chooseFrom: self readOnlyCollection title: nil). button adjustLayoutBounds]];
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			layoutInset: 10@0;
			adjustLayoutBounds;
			yourself