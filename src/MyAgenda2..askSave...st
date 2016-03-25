!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/25/2016 14:56'!
askSave
	| tmpFileName |

	tmpFileName := self askFileNameText.

	FileStream newFileNamed: tmpFileName do:[ :tmpStream |
			self
				askItemsItemCategoriesStoreOn: tmpStream
		]
! !
