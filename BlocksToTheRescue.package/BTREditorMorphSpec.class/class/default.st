instance creation
default

	^ self new
		getValueSelector: #value;
		setValueSelector: #value:;
		valueChangedSelector: #valueChanged