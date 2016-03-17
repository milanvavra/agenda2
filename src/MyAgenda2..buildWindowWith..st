!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 15:07'!
buildWindowWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec model: self.
	windowSpec label: #labelString.
	windowSpec children: OrderedCollection new.
	^windowSpec
! !
