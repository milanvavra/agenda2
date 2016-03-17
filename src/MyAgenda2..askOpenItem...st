!MyAgenda2 methodsFor: 'controller' stamp: 'mva 9/11/2015 02:27'!
askOpenItem
	| tmpItem |

	tmpItem := self askItems2List at: self askItems2ListSelectedIndex.
	self askOpenItem: tmpItem.

! !
