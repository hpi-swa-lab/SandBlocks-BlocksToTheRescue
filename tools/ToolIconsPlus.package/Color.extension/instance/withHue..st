*ToolIconsPlus
withHue: aNumber
	"hue in degree"
	
	^ Color
		h: aNumber
		s: self saturation
		v: self brightness
		alpha: self alpha