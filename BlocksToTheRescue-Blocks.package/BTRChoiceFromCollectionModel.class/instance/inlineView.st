as yet unclassified
inlineView

	^ (PluggableButtonMorphPlus 
		on: self 
		getState: nil 
		action: nil
		label:  #value) 
			action: [self index: (UIManager default chooseFrom: self readOnlyCollection title: nil)];
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			yourself