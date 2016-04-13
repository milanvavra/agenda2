!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 4/10/2016 20:54'!
buildLowerButtonsWith: builder
	| panelSpec b |
	panelSpec := builder pluggablePanelSpec new
		layout: #horizontal;
		spacing: -1;
		children: OrderedCollection new;
		yourself.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'New';
			horizontalResizing: #shrinkWrap;
			help: 'Erase data in memory' translated;
			state: nil;
			action: #askNew.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'Save';
			horizontalResizing: #shrinkWrap;
			help: 'Save data to text file named with "File"' translated;
			state: nil;
			action: #askSave.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'Load';
			horizontalResizing: #shrinkWrap;
			help: 'Erase data in memory and Load data from text file named with "File"' translated;
			state: nil;
			action: #askLoad.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'SaveToDb';
			horizontalResizing: #shrinkWrap;
			help: 'Save data to db file' translated;
			state: nil;
			action: #askSaveToDb.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'LoadFromDb';
			horizontalResizing: #shrinkWrap;
			help: 'Erase data in memory and Load data db file' translated;
			state: nil;
			action: #askLoadFromDb.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'Open';
			horizontalResizing: #shrinkWrap;
			help: 'Open the URL of the selected Item in "Items Selected" in a web browser' translated;
			state: nil;
			action: #askOpenItem.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'New Item';
			horizontalResizing: #shrinkWrap;
			help: 'Create New Item' translated;
			state: nil;
			action: #askNewItem.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'New Category';
			horizontalResizing: #shrinkWrap;
			help: 'Create a new category. Assign it to selected item' translated;
			state: nil;
			action: #askNewCategory.

	panelSpec children add: b.

	^panelSpec
! !
