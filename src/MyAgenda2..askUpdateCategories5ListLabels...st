!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 21:44'!
askUpdateCategories5ListLabels
	varCategories5ListLabels := self askCategories5List collect: [ :e |
		e at: 2]
! !
