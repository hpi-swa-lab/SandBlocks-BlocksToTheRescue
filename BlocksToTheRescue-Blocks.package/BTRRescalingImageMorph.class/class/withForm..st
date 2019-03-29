instance creation
withForm: aForm

	^ self new
		image: aForm;
		extent: aForm extent;
		yourself