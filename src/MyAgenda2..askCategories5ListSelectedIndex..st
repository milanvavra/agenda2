!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/16/2016 01:28'!
askCategories5ListSelectedIndex: tmpIndex
	| tmpCategory tmpItem |

	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	tmpCategory := self askCategories5List at: tmpIndex.
	tmpItem := self askItems2List at: self askItems2ListSelectedIndex.

	(self askItemCategories at: tmpItem) add: tmpCategory.
	(self askCategoryItems at:tmpCategory) add: tmpItem.

	self askUpdateWindow.

	]
! !
