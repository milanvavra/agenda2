!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/16/2016 01:28'!
askCategories4ListSelectedIndex: tmpIndex
	| tmpCategory tmpItem |

	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	tmpCategory := self askCategories4List at: tmpIndex.

	tmpCategory askCategoryText = 'All' ifFalse:
		[ tmpItem := self askItems2List at: self askItems2ListSelectedIndex.

		"varItems2ListSelectedIndex := 0.
		"

		(self askItemCategories at: tmpItem) remove: tmpCategory.
		(self askCategoryItems at:tmpCategory) remove: tmpItem.

		self askUpdateWindow].
	]
! !
