!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/25/2016 14:10'!
askCategories5ListSelectedIndex: tmpIndex
	| tmpCategoryNumber tmpItemNumber query args cols rows |

	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	tmpCategoryNumber := (self askCategories5List at: tmpIndex) at: 1.
	tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.

	query := 'INSERT INTO [Link]([Item*Number], [Category*Number]) VALUES(?, ?)'.
	args := {tmpItemNumber. tmpCategoryNumber}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	self askUpdateCategories4.
	self askUpdateCategories4List.
	self askUpdateCategories4ListLabels.
	self changed: #askCategories4ListLabels.

	self askUpdateCategories5.
	self askUpdateCategories5List.
	self askUpdateCategories5ListLabels.
	self changed: #askCategories5ListLabels.

	]
! !
