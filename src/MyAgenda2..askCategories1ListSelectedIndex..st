!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/16/2016 01:27'!
askCategories1ListSelectedIndex: tmpIndex

	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	self askOrCategoriesSelected ifTrue:
		[  self askOrCategories add: (self askCategories1List at: tmpIndex) ].

	self askAndCategoriesSelected ifTrue:
		[  self askAndCategories add: (self askCategories1List at: tmpIndex) ].

	self askNotCategoriesSelected ifTrue:
		[  self askNotCategories add: (self askCategories1List at: tmpIndex) ].

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow

	]
! !
