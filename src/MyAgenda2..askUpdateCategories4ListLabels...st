!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 21:39'!
askUpdateCategories4ListLabels
	varCategories4ListLabels := self askCategories4List collect: [ :e |
		e at: 2]
! !
