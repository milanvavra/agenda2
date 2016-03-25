!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 19:10'!
askItems2ListHasSelectedIndex
	^ (self askItems2ListSelectedIndex > 0) and: [ self askItems2ListSelectedIndex <= self askItems2List size ]

! !
