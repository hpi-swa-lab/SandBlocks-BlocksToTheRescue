toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Tetris';
		children: OrderedCollection new;
		extent: 100@100;
		wantsResizeHandles: false;
		horizontalResizing: #shrinkWrap;
		verticalResizing: #shrinkWrap;
		yourself).
	
	windowSpec children add: (aBuilder pluggablePanelSpec new
		minimumExtent: TPlayfieldView defaultExtent;
		name: 'playfieldView';
		model: self;
		children: #openPlayfield;
		frame: (LayoutFrame fractions: (0@0 extent: 1@1));
		horizontalResizing: #shrinkWrap;
		verticalResizing: #shrinkWrap;
		yourself).
	
	^ (aBuilder build: windowSpec)
		removeCornerGrips;
		extent: 0@0;
		yourself