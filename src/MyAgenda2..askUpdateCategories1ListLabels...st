!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/19/2016 00:37'!
askUpdateCategories1ListLabels
	varCategories1ListLabels := self askCategories1List collect: [ :e | e at: 2]
! !
