!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/19/2016 00:52'!
askUpdateNotCategoriesListLabels
	varNotCategoriesListLabels := self askNotCategoriesList collect: [ :e | e at: 2]
! !
