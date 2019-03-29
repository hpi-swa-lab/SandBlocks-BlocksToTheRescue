*ToolIconsPlus
adjustHueFrom: color1 to: color2

	| hueDifference |
	hueDifference := color2 hue - color1 hue.
	^ self collectColors: [:color | color rotateHue: hueDifference ]