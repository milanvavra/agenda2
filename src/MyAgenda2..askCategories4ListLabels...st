!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/17/2016 15:29'!
askCategories4ListLabels
	^self askCategories4List collect: [ :tmpCategory |
		OrderedCollection new add: tmpCategory askCategoryText;
			add: (self askCategoryItems at: tmpCategory) size;
			yourself
	]
! !
