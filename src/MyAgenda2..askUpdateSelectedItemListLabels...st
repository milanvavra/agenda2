!MyAgenda2 methodsFor: 'controller' stamp: 'mva 4/10/2016 10:49'!
askUpdateSelectedItemListLabels
	| tmpItemNumber query args cols rows |

	tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.

	query := 'SELECT [Item.Text], [Item.Url] FROM [Item] WHERE [Item.Number] = ?'.
	args := {tmpItemNumber}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	varSelectedItemListLabels := Array with: ((rows at: 1) at: 1) with: ((rows at: 1) at: 2).
	self changed: #askSelectedItemListLabels.
! !
