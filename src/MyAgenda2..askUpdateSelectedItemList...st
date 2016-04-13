!MyAgenda2 methodsFor: 'controller' stamp: 'mva 4/10/2016 17:01'!
askUpdateSelectedItemList
	| tmpItemNumber |

	tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.

	self askUpdateSelectedItemListForItemNumber: tmpItemNumber
! !
