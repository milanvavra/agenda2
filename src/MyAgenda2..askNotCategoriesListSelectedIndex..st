!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/16/2016 01:27'!
askNotCategoriesListSelectedIndex: tmpIndex

	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	self askAndCategoriesSelected ifTrue:
		[  self askAndCategories add: (self askNotCategoriesList at: tmpIndex) ].

	self askOrCategoriesSelected ifTrue:
		[  self askOrCategories add: (self askNotCategoriesList at: tmpIndex) ].

	self askNotCategories remove: (self askNotCategoriesList at: tmpIndex).

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow

	]
! !
