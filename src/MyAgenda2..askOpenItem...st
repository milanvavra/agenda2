!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/19/2016 01:23'!
askOpenItem
	| tmpItemNumber query args cols rows |

	tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.

	query := 'SELECT [Item.Url] FROM [Item] WHERE [Item.Number] = ?'.
	args := {tmpItemNumber}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	self askOpenUrl: ((rows at: 1) at: 1).

! !
