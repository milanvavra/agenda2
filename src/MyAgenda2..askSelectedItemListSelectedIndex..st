!MyAgenda2 methodsFor: 'controller' stamp: 'mva 4/10/2016 11:14'!
askSelectedItemListSelectedIndex: tmpIndex
	| tmpItemNumber tmpItemText tmpItemUrlText query args cols rows |
	tmpIndex = 1 ifTrue: [
		tmpItemText := UIManager default
			request: 'Edit Item Text'
			initialAnswer: (self askSelectedItemListLabels at: 1).
		tmpItemText isEmpty not ifTrue: [
			tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.

			query := 'UPDATE [Item] SET [Item.Text] = ? WHERE [Item.Number] = ?'.
			args := {tmpItemText. tmpItemNumber}.
			cols := OrderedCollection new. rows := OrderedCollection new.
			self executeQuery: query args: args cols: cols rows: rows.
			self askUpdateSelectedItemList
		]

	] ifFalse: [ tmpIndex = 2 ifTrue: [
		tmpItemUrlText := UIManager default
			request: 'Edit Item Url'
			initialAnswer: (self askSelectedItemListLabels at: 2).
		tmpItemUrlText isEmpty not ifTrue: [

			tmpItemNumber := (self askItems2List at: self askItems2ListSelectedIndex) at: 1.
			query := 'UPDATE [Item] SET [Item.Url] = ? WHERE [Item.Number] = ?'.
			args := {tmpItemUrlText. tmpItemNumber}.
			cols := OrderedCollection new. rows := OrderedCollection new.
			self executeQuery: query args: args cols: cols rows: rows.
			self askUpdateSelectedItemList
		]
	] ]
! !
