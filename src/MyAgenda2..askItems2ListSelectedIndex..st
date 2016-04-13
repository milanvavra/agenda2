!MyAgenda2 methodsFor: 'controller' stamp: 'mva 4/10/2016 10:49'!
askItems2ListSelectedIndex: tmpIndex

	tmpIndex = 0 ifFalse: [

	varItems2ListSelectedIndex := tmpIndex.
	self askUpdateSelectedItemListLabels.

	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateCategories4.
	self askUpdateCategories4List.
	self askUpdateCategories4ListLabels.
	self changed: #askCategories4ListLabels.

	self askUpdateCategories5.
	self askUpdateCategories5List.
	self askUpdateCategories5ListLabels.
	self changed: #askCategories5ListLabels.

	^varItems2ListSelectedIndex
	]
! !
