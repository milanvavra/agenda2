!MyAgenda2 methodsFor: 'controller' stamp: 'mva 4/10/2016 20:12'!
askNewItem
	| tmpItemNumber tmpItemUrlText tmpItemText query args cols rows |
	self break.

"	tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.

"	query := 'SELECT MAX([Item.Number]) FROM [Item]'.
	args := {}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	tmpItemNumber := ((rows at: 1) at: 1) + 1.
	tmpItemText := 'New Item'.
	tmpItemUrlText := 'http://www.google.com'.

	query := 'INSERT INTO [Item]([Item.Number], [Item.Text], [Item.Url]) VALUES(?, ?, ?)'.
	args := {tmpItemNumber. tmpItemText. tmpItemUrlText}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	query :=
	 'INSERT INTO [Link]([Category*Number], [Item*Number])

	SELECT [Category*Number], ? AS [Item*Number] FROM [AndCategory]
	'.
	args := {tmpItemNumber}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	self askUpdateItems2.
	self askUpdateItems2List.
	self askUpdateItems2ListLabels.
	self changed: #askItems2ListLabels.


! !
