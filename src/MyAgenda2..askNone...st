!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/10/2015 04:26'!
askNone
	self askOrCategoriesToDefault.
	self askAndCategoriesToDefault.
	self askNotCategoriesToDefault.

	self askAndCategoriesSelected: true.
	self changed: #askAndCategoriesSelected.

	self askUpdateWindow
! !
