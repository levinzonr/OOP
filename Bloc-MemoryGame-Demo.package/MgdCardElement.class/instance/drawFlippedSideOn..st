visual properties
drawFlippedSideOn: aCanvas
	|font origin |
	font := aCanvas font
		named: 'Source Sans Pro';
		size: 50;
		build.

	origin := self extent / 2.0.
		
	aCanvas text
		baseline: origin;
		font: font;
		paint: Color white;
		string: self card symbol asString;
		draw.    