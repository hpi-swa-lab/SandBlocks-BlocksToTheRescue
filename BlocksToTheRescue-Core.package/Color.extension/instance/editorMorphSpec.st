*BlocksToTheRescue-Core
editorMorphSpec

	^ BTREditorMorphSpec new
			setValueSelector: #selectedColor:;
			getValueSelector: #selectedColor;
			valueChangedSelector: #colorExpression;
			constructor: 
				[NewColorPickerMorph
					on: nil
					originalColor: Color green
					setColorSelector: nil]