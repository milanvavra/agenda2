!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/17/2016 15:29'!
askCategories1ListLabels
	^self askCategories1List collect: [ :tmpCategory |
		OrderedCollection new add: tmpCategory askCategoryText;
			add: (self askCategoryItems1 at: tmpCategory) size;
			yourself
	]
! !
