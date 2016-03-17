!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 15:06'!
buildWindowWith: builder specs: specs
	| windowSpec |
	windowSpec := self buildWindowWith: builder.
	specs do:[:assoc|
		| rect action widgetSpec |
		rect := assoc key.
		action := assoc value.
		widgetSpec := action value.
		widgetSpec ifNotNil:[
			widgetSpec frame: rect.
			windowSpec children add: widgetSpec]].
	^windowSpec
! !
