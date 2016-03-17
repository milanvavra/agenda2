!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/16/2016 01:26'!
askAndCategoriesListSelectedIndex: tmpIndex


	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	self askOrCategoriesSelected ifTrue:
		[  self askOrCategories add: (self askAndCategoriesList at: tmpIndex) ].

	self askNotCategoriesSelected ifTrue:
		[  self askNotCategories add: (self askAndCategoriesList at: tmpIndex) ].

	self askAndCategories remove: (self askAndCategoriesList at: tmpIndex).

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow

	]
! !
