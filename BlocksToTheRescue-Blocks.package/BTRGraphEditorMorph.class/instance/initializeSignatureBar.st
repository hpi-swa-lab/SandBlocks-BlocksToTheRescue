as yet unclassified
initializeSignatureBar

	self 
		signatureBar: (PluggableTextMorphPlus 
			on: self
			text: #signature
			accept: #signature:
			readSelection: nil
			menu: nil);
		addMorph: self signatureBar.
	self signatureBar styler: SHTextStylerST80 new.
	self signatureBar styler 
		view: self signatureBar;
		classOrMetaClass: self class.
	self signatureBar updateStyle.