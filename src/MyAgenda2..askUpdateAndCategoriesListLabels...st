!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 13:22'!
askUpdateAndCategoriesListLabels
	varAndCategoriesListLabels := self askAndCategoriesList collect: [ :e |
		OrderedCollection new add: (e at: 3); add: (e at: 2); yourself ]
! !
