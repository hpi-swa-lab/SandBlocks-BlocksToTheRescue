toolbuilder
buildSignatureBar

	| signatureBar |
	signatureBar := PluggableTextMorphPlus 
			on: self 
			text: #signature
			accept: #signature:
			readSelection: nil
			menu: nil.
	signatureBar acceptAction: [:newSignature | self accept].
	signatureBar styler: SHTextStylerST80 new.
	signatureBar styler 
		view: signatureBar;
		classOrMetaClass: self class.
	signatureBar updateStyle.
	signatureBar layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0) offsets: (0 @ 0 corner: 0 @ self signatureBarHeight)). 
	^ signatureBar