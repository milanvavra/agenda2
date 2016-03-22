!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/18/2016 16:55'!
askDatabaseCreateTables
	| query args cols rows |
	#(
'CREATE TABLE IF NOT EXISTS [Item] (
[Item.Number] INTEGER PRIMARY KEY,
[Item.Text] TEXT,
[Item.Url] TEXT
);'

'CREATE TABLE IF NOT EXISTS [Category] (
[Category.Number] INTEGER PRIMARY KEY,
[Category.Text] TEXT,
UNIQUE
([Category.Text])
);'

'CREATE TABLE IF NOT EXISTS [Link] (
[Link.Number] INTEGER PRIMARY KEY,
[Item*Number] INTEGER,
[Category*Number] INTEGER,
FOREIGN KEY
([Category*Number]) REFERENCES [Category] ([Category.Number]),
FOREIGN KEY
([Item*Number]) REFERENCES [Item] ([Item.Number]),
UNIQUE
([Item*Number],
[Category*Number])
);'

'CREATE TABLE IF NOT EXISTS [AndCategory] (
[Category*Number] INTEGER PRIMARY KEY,
FOREIGN KEY
([Category*Number]) REFERENCES [Category] ([Category.Number])
);'

'CREATE TABLE IF NOT EXISTS [NotCategory] (
[Category*Number] INTEGER PRIMARY KEY,
FOREIGN KEY
([Category*Number]) REFERENCES [Category] ([Category.Number])
);'

'CREATE TABLE IF NOT EXISTS [Category1] (
[Category*Number] INTEGER PRIMARY KEY,
FOREIGN KEY
([Category*Number]) REFERENCES [Category] ([Category.Number])
);'

'CREATE TABLE IF NOT EXISTS [Item2] (
[Item*Number] INTEGER PRIMARY KEY,
FOREIGN KEY
([Item*Number]) REFERENCES [Item] ([Item.Number])
);'

'CREATE TABLE IF NOT EXISTS [Category4] (
[Category*Number] INTEGER PRIMARY KEY,
FOREIGN KEY
([Category*Number]) REFERENCES [Category] ([Category.Number])
);'

'CREATE TABLE IF NOT EXISTS [Category5] (
[Category*Number] INTEGER PRIMARY KEY,
FOREIGN KEY
([Category*Number]) REFERENCES [Category] ([Category.Number])
);'
	)

	do: [ :tmpQuery |
		query := tmpQuery replaceCrWithLf.
		args := {}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].
! !
