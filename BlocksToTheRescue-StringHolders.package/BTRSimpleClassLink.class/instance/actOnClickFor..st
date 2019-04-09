mouse events
actOnClickFor: model

	^ (Sensor anyModifierKeyPressed or: [Sensor shiftPressed])
			and: [
				Project current addDeferredUIMessage: [
					ToolSet browseClass: self anchoredClass].
				true]