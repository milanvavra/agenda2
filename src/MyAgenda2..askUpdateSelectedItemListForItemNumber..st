!MyAgenda2 methodsFor: 'controller' stamp: 'mva 4/10/2016 17:00'!
askUpdateSelectedItemListForItemNumber: tmpItemNumber
	| query args cols rows |

	query := 'SELECT [Item.Text], [Item.Url] FROM [Item] WHERE [Item.Number] = ?'.
	args := {tmpItemNumber}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	varSelectedItemListLabels := Array with: ((rows at: 1) at: 1) with: ((rows at: 1) at: 2).
	self changed: #askSelectedItemListLabels.
! !
