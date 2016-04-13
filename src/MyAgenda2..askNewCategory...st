!MyAgenda2 methodsFor: 'controller' stamp: 'mva 4/11/2016 16:42'!
askNewCategory
	| tmpCategoryNumber tmpCategoryText tmpItemNumber query args cols rows |

	tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.

	tmpCategoryText := UIManager default
		request: 'Edit Category Text'
		initialAnswer: ''.

	tmpCategoryText isNil ifTrue: [ ^self ].

	query := 'SELECT [Category.Number] FROM [Category] WHERE [Category.Text] = ?'.
	args := {tmpCategoryText}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	rows isEmpty ifFalse: [
		tmpCategoryNumber := (rows at: 1) at: 1.

		query := 'INSERT INTO [Link]([Item*Number], [Category*Number]) VALUES(?, ?)'.
		args := {tmpItemNumber. tmpCategoryNumber}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	] ifTrue: [
		query := 'SELECT MAX([Category.Number]) FROM [Category]'.
		args := {}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.

		tmpCategoryNumber := ((rows at: 1) at: 1) + 1.

		query := 'INSERT INTO [Category]([Category.Number], [Category.Text]) VALUES(?, ?)'.
		args := {tmpCategoryNumber. tmpCategoryText}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.

		query := 'INSERT INTO [Link]([Item*Number], [Category*Number]) VALUES(?, ?)'.
		args := {tmpItemNumber. tmpCategoryNumber}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.

		self askUpdateCategories1.
		self askUpdateCategories1List.
		self askUpdateCategories1ListLabels.
		self changed: #askCategories1ListLabels.
	].
	self askUpdateCategories4.
	self askUpdateCategories4List.
	self askUpdateCategories4ListLabels.
	self changed: #askCategories4ListLabels.
! !
