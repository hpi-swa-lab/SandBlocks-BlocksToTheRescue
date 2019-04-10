views
inlineView

	^ (PluggableButtonMorphPlus 
		on: self 
		getState: nil 
		action: nil
		label:  #currentLabel)
			in: [:button | button
				action: [
					self index: (UIManager default chooseFrom: self collectionLabels title: nil).
					button adjustLayoutBounds]];
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				layoutInset: 10@0;
				adjustLayoutBounds;
				yourself