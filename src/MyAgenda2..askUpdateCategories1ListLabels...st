!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 13:22'!
askUpdateCategories1ListLabels
	varCategories1ListLabels := self askCategories1List collect: [ :e |
		OrderedCollection new add: (e at: 3); add: (e at: 2); yourself ]
! !
