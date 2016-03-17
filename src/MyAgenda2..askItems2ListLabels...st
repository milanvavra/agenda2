!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/17/2016 15:32'!
askItems2ListLabels
	^ self askItems2List collect: [ :tmpItem |
		OrderedCollection new add: tmpItem askItemText;
			add: (self askItemCategories at: tmpItem) size;
			yourself
	]
! !
