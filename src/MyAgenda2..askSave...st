!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/16/2016 00:57'!
askSave
	| tmpFileName |

	tmpFileName := self askFileName askFileNameText.

	FileStream newFileNamed: tmpFileName do:[ :tmpStream |
			self
				askItems: self askItemCategories keys
				ItemCategories: self askItemCategories
				StoreOn: tmpStream
		]
! !
