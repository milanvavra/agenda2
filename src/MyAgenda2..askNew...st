!MyAgenda2 methodsFor: 'controller' stamp: 'mva 9/7/2015 16:54'!
askNew
	self askItemCategories: nil.

	self askCategoryItems: nil.

	self askInstancesDictionary: nil.


	self askUpdateSetsToDefault.

	self askUpdateWindow
! !
