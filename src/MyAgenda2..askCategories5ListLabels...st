!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/17/2016 15:30'!
askCategories5ListLabels
	^self askCategories5List collect: [ :tmpCategory |
		OrderedCollection new add: tmpCategory askCategoryText;
			add: (self askCategoryItems at: tmpCategory) size;
			yourself
	]
! !
